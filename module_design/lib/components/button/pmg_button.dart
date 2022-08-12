import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import '../../styles/pmg_radius.dart';

class PmgButton extends StatefulWidget {
  final String label;
  final Color? textColor;
  final PmgIcons? leftIcon;
  final PmgIcons? rightIcon;
  final PmgButtonType buttonType;
  final PmgButtonSize buttonSize;
  final VoidCallback onTap;
  final bool disabled;
  const PmgButton({
    Key? key,
    this.label = '',
    this.buttonType = PmgButtonType.primary,
    this.buttonSize = PmgButtonSize.medium,
    this.leftIcon,
    this.rightIcon,
    this.disabled = false,
    required this.onTap,
    this.textColor,
  })  : assert(leftIcon == null || rightIcon == null),
        super(key: key);

  @override
  State<PmgButton> createState() => _PmgButtonState();
}

class _PmgButtonState extends State<PmgButton> {
  bool isHovering = false;
  bool isHighlighting = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          color: widget.disabled
              ? widget.buttonType.disabledBackgroundColor
              : widget.buttonType.backgroundColor,
          borderRadius: PmgRadius.medium,
          child: InkWell(
            onTap: widget.onTap,
            hoverColor: widget.buttonType.hoverBackgroundColor,
            onHover: (hovering) => setState(() {
              isHovering = hovering;
            }),
            highlightColor: widget.buttonType.highlightColor,
            onHighlightChanged: (highlight) => setState(() {
              isHighlighting = highlight;
            }),
            splashColor: widget.buttonType.highlightColor,
            borderRadius: PmgRadius.medium,
            child: Container(
              alignment: Alignment.center,
              height: widget.buttonSize.height,
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(
                      color: widget.disabled
                          ? widget.buttonType.disabledOutlineColor
                          : isHighlighting
                              ? widget.buttonType.highlightOutlineColor
                              : isHovering
                                  ? widget.buttonType.hoverOutlineColor
                                  : widget.buttonType.outlineColor,
                      width: 1),
                ),
                borderRadius: PmgRadius.medium,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.leftIcon != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: PmgIcon(
                        widget.leftIcon!,
                        size: widget.buttonSize.contentSize,
                        color: widget.buttonType.contentColor,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      widget.label,
                      style: widget.textColor == null
                          ? widget.buttonSize.typography(widget.disabled
                              ? widget.buttonType.disabledContentColor
                              : widget.buttonType.contentColor)
                          : widget.buttonSize.typography(widget.textColor),
                    ),
                  ),
                  if (widget.rightIcon != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: PmgIcon(
                        widget.rightIcon!,
                        size: widget.buttonSize.contentSize,
                        color: widget.buttonType.contentColor,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: widget.disabled,
          child: Container(
            height: widget.buttonSize.height,
            color: Colors.transparent,
          ),
        )
      ],
    );
  }
}
