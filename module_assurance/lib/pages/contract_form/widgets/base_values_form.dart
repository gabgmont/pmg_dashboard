import 'package:flutter/material.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class BaseValuesForm extends StatelessWidget {
  const BaseValuesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Valores base para contratação',
          style: PmgTypography.bodyMediumSemiBold(color: PmgColors.neutralDark),
        ),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Aluguel',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Condominio',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'IPTU', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Água',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Luz',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Gás',
            controller: TextEditingController()),
      ],
    );
  }
}
