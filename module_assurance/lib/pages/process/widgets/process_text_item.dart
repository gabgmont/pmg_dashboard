import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProcessTextItem extends StatelessWidget {
  final String label;
  final String? value;
  const ProcessTextItem({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: label,
        style: PmgTypography.bodySmallSemiBold(color: PmgColors.neutralDark),
        children: [
          TextSpan(
              text: value,
              style: PmgTypography.bodySmall(color: PmgColors.neutralDark))
        ]));
  }
}
