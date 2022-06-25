import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_typography.dart';

import '../../styles/pmg_radius.dart';
import 'pmg_snack_bar_config.dart';

class TapBounceContainer extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const TapBounceContainer({
    required this.child,
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  _TapBounceContainerState createState() => _TapBounceContainerState();
}

class _TapBounceContainerState extends State<TapBounceContainer>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  final animationDuration = const Duration(milliseconds: 200);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: animationDuration,
      lowerBound: 0.0,
      upperBound: 0.04,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onPanEnd: _onPanEnd,
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  Future<void> _onTapUp(TapUpDetails details) async {
    await _closeSnackBar();
  }

  Future<void> _onPanEnd(DragEndDetails details) async {
    await _closeSnackBar();
  }

  Future _closeSnackBar() async {
    await _controller.reverse();
    await Future.delayed(animationDuration);
    widget.onTap?.call();
  }
}

void showPmgTopSnackBar({
  required BuildContext context,
  required String message,
  required PmgSnackBarType snackBarType,
}) {
  late OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (context) => TopSnackBar(
      message: message,
      snackBarType: snackBarType,
      onDismissed: () => overlayEntry.remove(),
    ),
  );

  Overlay.of(context)?.insert(overlayEntry);
}

class TopSnackBar extends StatefulWidget {
  final String message;
  final VoidCallback onDismissed;
  final Duration showOutAnimationDuration = const Duration(milliseconds: 1200);
  final Duration hideOutAnimationDuration = const Duration(milliseconds: 550);
  final Duration displayDuration = const Duration(milliseconds: 3000);
  final double additionalTopPadding = 16.0;
  final PmgSnackBarType snackBarType;
  const TopSnackBar({
    required this.message,
    required this.onDismissed,
    required this.snackBarType,
    Key? key,
  }) : super(key: key);

  @override
  _TopSnackBarState createState() => _TopSnackBarState();
}

class _TopSnackBarState extends State<TopSnackBar>
    with TickerProviderStateMixin {
  late Animation offsetAnimation;
  late AnimationController animationController;
  double? topPosition;

  @override
  void initState() {
    topPosition = widget.additionalTopPadding;
    _setupAndStartAnimation();
    initProgressAnimation();
    super.initState();
  }

  late AnimationController _progressIndicatorController;
  late Animation<double> _chartAnimation;

  void initProgressAnimation() {
    _progressIndicatorController = AnimationController(
        vsync: this,
        duration: widget.displayDuration +
            widget.hideOutAnimationDuration +
            widget.hideOutAnimationDuration);
    _chartAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_progressIndicatorController);
    _progressIndicatorController.forward();
  }

  void _setupAndStartAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: widget.showOutAnimationDuration,
      reverseDuration: widget.hideOutAnimationDuration,
    );

    final offsetTween = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: const Offset(0.0, 0.0),
    );

    offsetAnimation = offsetTween.animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut,
        reverseCurve: Curves.linearToEaseOut,
      ),
    )..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          await Future.delayed(widget.displayDuration);
          await animationController.reverse();
          if (mounted) {
            setState(() {
              topPosition = 0;
            });
          }
        }

        if (status == AnimationStatus.dismissed) {
          widget.onDismissed.call();
        }
      });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) => AnimatedPositioned(
        duration: widget.hideOutAnimationDuration * 1.5,
        curve: Curves.linearToEaseOut,
        top: topPosition,
        left: 16,
        right: 16,
        child: SlideTransition(
          position: offsetAnimation as Animation<Offset>,
          child: SafeArea(
            child: TapBounceContainer(
              onTap: animationController.reverse,
              child: ClipRRect(
                borderRadius: PmgRadius.radiusExtraLarge,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.snackBarType.backgroundColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 8.0),
                        spreadRadius: 1,
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 8),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 120,
                              child: DefaultTextStyle(
                                style: PmgTypography.bodyTiny(
                                    color: PmgColors.monoWhite),
                                child: Text(
                                  widget.message,
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              child: const Icon(
                                Icons.close,
                                color: PmgColors.monoWhite,
                                size: 16,
                              ),
                              onTap: animationController.reverse,
                            ),
                          ],
                        ),
                      ),
                      AnimatedBuilder(
                        animation: _chartAnimation,
                        builder: (context, _) => LinearProgressIndicator(
                          value: _progressIndicatorController.value,
                          backgroundColor: Colors.transparent,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              PmgColors.monoWhite.withOpacity(.5)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
