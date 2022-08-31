import 'package:flutter/material.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class CoversForm extends StatelessWidget {
  const CoversForm({Key? key}) : super(key: key);

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
            label: 'Aluguel + encargos',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Danos ao imóvel',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Pintura interna e/ou externa', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Multa e recisão',
            controller: TextEditingController()),
      ],
    );
  }
}
