import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/components/control/radio/pmg_radio.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class RadChoiceWidget extends StatelessWidget {
  final String label;
  final String firstOption;
  final String secondOption;
  const RadChoiceWidget(
      {Key? key,
      required this.firstOption,
      required this.secondOption,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: PmgSpacing.xxxs),
        Text(label,
            textAlign: TextAlign.center,
            style: PmgTypography.bodyTiny(color: PmgColors.neutralDark)),
        const SizedBox(height: PmgSpacing.nano),
        Row(
          children: [
            PmgRadio(onTap: () {}),
            const SizedBox(width: PmgSpacing.femto),
            Text(
              firstOption,
              style: PmgTypography.bodyTiny(color: PmgColors.neutralDark),
            )
          ],
        ),
        const SizedBox(height: PmgSpacing.nano),
        Row(
          children: [
            PmgRadio(onTap: () {}),
            const SizedBox(width: PmgSpacing.femto),
            Text(
              secondOption,
              style: PmgTypography.bodyTiny(color: PmgColors.neutralDark),
            )
          ],
        )
      ],
    );
  }
}
