import 'package:flutter/material.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class IncomeData extends StatelessWidget {
  const IncomeData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 32,
          child: Text('Renda',
              style: PmgTypography.bodyMediumSemiBold(
                  color: PmgColors.neutralDark)),
        ),
        Row(
          children: [
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'Mensal',
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(width: PmgSpacing.xxxs),
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'Outras',
                controller: TextEditingController(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
