import 'package:flutter/material.dart';
import 'package:module_design/components/button/button_config.dart';

import '../../assets/pmg_icons.dart';
import '../../styles/pmg_spacing.dart';


class PmgButtonContent extends StatelessWidget {
  final Widget content;

  PmgButtonContent.text(String label,
      {Key? key, required PmgButtonSize size})
      : content = Center(
            child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(label, style: setButtonTextStyle(size)))),
        super(key: key);

  PmgButtonContent.leading(String label,
      {Key? key, required PmgButtonSize size})
      : content = Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PmgIcon(
              PmgIcons.arrow_right,
              size: setIconSize(size),
            ),
            Visibility(
                visible: label.isNotEmpty,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size == PmgButtonSize.small
                          ? PmgSpacing.spacingFemto
                          : PmgSpacing.spacingNano),
                  child: Text(label, style: setButtonTextStyle(size)),
                ))
          ],
        ),
        super(key: key);

  PmgButtonContent.trailing(String label,
      {Key? key, required PmgButtonSize size})
      : content = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
                visible: label.isNotEmpty,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: size == PmgButtonSize.small
                          ? PmgSpacing.spacingFemto
                          : PmgSpacing.spacingNano),
                  child: Text(label, style: setButtonTextStyle(size)),
                )),
            PmgIcon(
              PmgIcons.arrow_right,
              size: setIconSize(size),
            )
          ],
        ),
        super(key: key);

  PmgButtonContent.icon({
    bool enable = true,
    required PmgIcons icon,
    required PmgButtonSize size,
    Key? key,
  })  : content = Center(
          child: PmgIcon(
            icon,
            size: setIconSize(size),
          ),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return content;
  }
}
