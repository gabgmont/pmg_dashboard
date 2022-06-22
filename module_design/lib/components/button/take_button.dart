import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_design/components/button/button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';

import '../../assets/pmg_icons.dart';
import '../../styles/pmg_radius.dart';



class PmgButton extends StatefulWidget {
  final Widget content;
  final PmgButtonSize btnSize;
  final PmgButtonContentType btnType;
  final VoidCallback? onTapBtn;
  final bool hasBorderBtn;
  final bool animatedBtn;
  final bool enabled;

  PmgButton.primary(
      {Key? key,
      String label = '',
      required BuildContext context,
      required VoidCallback onTap,
      PmgButtonSize size = PmgButtonSize.medium,
      PmgButtonContentType type = PmgButtonContentType.text,
      PmgIcons icon = PmgIcons.arrow_right,
      bool enable = true})
      : animatedBtn = false,
        onTapBtn = enable ? onTap : null,
        hasBorderBtn = false,
        btnType = type,
        btnSize = size,
        enabled = enable,
        content = setButtonContentType(type, label, size, icon, enable),
        super(key: key);

  PmgButton.secondary(
      {Key? key,
      String label = '',
      required BuildContext context,
      required VoidCallback onTap,
      PmgButtonSize size = PmgButtonSize.medium,
      PmgButtonContentType type = PmgButtonContentType.text,
      this.animatedBtn = false,
      PmgIcons icon = PmgIcons.arrow_right,
      bool enable = true})
      :         onTapBtn = enable ? onTap : null,
        hasBorderBtn = false,
        btnType = type,
        btnSize = size,
        enabled = enable,
        content = setButtonContentType(type, label, size,
         icon, enable),
        super(key: key);

  PmgButton.outline(
      {Key? key,
      String label = '',
      required BuildContext context,
      required VoidCallback onTap,
      PmgButtonSize size = PmgButtonSize.medium,
      PmgButtonContentType type = PmgButtonContentType.text,
      PmgIcons icon = PmgIcons.arrow_right,
      bool enable = true})
      :         onTapBtn = onTap,
        hasBorderBtn = true,
        animatedBtn = false,
        btnType = type,
        btnSize = size,
        enabled = enable,
        content = setButtonContentType(type, label, size, icon, enable),
        super(key: key);

  PmgButton.text(
      {Key? key,
      String label = '',
      required BuildContext context,
      required VoidCallback onTap,
      PmgButtonSize size = PmgButtonSize.medium,
      PmgButtonContentType type = PmgButtonContentType.text,
      PmgIcons icon = PmgIcons.arrow_right,
      bool enable = true})
      :         onTapBtn = enable ? onTap : null,
        hasBorderBtn = false,
        animatedBtn = false,
        btnType = type,
        btnSize = size,
        enabled = enable,
        content = setButtonContentType(type, label, size, icon, enable),
        super(key: key);

  PmgButton.custom(
      {Key? key,
      String label = '',
      required BuildContext context,
      required VoidCallback onTap,
      bool animated = false,
      PmgButtonSize size = PmgButtonSize.medium,
      PmgButtonContentType contentType = PmgButtonContentType.text,
      PmgButtonType type = PmgButtonType.primary,
      PmgIcons icon = PmgIcons.arrow_right,
      bool enable = true})
      :         onTapBtn = enable ? onTap : null,
        hasBorderBtn = type == PmgButtonType.outline,
        animatedBtn = false,
        btnType = contentType,
        btnSize = size,
        enabled = enable,
        content = setButtonContentType(contentType, label, size,
             icon, enable),
        super(key: key);

  @override
  State<PmgButton> createState() => _PmgButtonState();
}

class _PmgButtonState extends State<PmgButton> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: PmgRadius.radiusExtraLarge,
          child: Material(
              color: PmgColors.primary,
              child: InkWell(
                onTap: widget.onTapBtn,
                onHover: widget.animatedBtn ? (_) => hoverHighlight() : null,
                onHighlightChanged:
                    widget.animatedBtn ? (_) => hoverHighlight() : (_) => HapticFeedback.heavyImpact(),
                hoverColor:
                    widget.animatedBtn ? PmgColors.primaryDark : null,
                splashColor:
                    widget.animatedBtn ? PmgColors.primaryDark : null,
                highlightColor: PmgColors.primaryDark,
                child: Container(
                    decoration: BoxDecoration(
                      border: widget.hasBorderBtn
                          ? Border.fromBorderSide(BorderSide(
                              color: hovering
                                  ? PmgColors.primaryDark
                                  : PmgColors.primary,
                              width: 1))
                          : const Border.fromBorderSide(BorderSide.none),
                      borderRadius: PmgRadius.radiusExtraLarge,
                    ),
                    height: setButtonSize(widget.btnSize),
                    child: Padding(
                        padding:
                            setButtonPadding(widget.btnSize, widget.btnType),
                        child: widget.content)),
              )),
        ),
        Visibility(
          visible: !widget.enabled,
          child: Container(
            height: setButtonSize(widget.btnSize),
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: PmgColors.neutral.withOpacity(.5),
                borderRadius: PmgRadius.radiusExtraLarge),
          ),
        )
      ],
    );
  }

  hoverHighlight() => setState(() {
        hovering = !hovering;
        HapticFeedback.heavyImpact();
      });
}
