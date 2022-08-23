import 'package:flutter/material.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class AttendantPersonalData extends StatelessWidget {
  const AttendantPersonalData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Dados Pessoais',
                style: PmgTypography.bodyMediumSemiBold(
                    color: PmgColors.neutralDark)),
            const SizedBox(width: PmgSpacing.nano),
            PmgButton(
                label: 'Salvar',
                textColor: PmgColors.primaryDark,
                buttonType: PmgButtonType.text,
                buttonSize: PmgButtonSize.small,
                onTap: () {})
          ],
        ),
        const SizedBox(height: PmgSpacing.femto),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'Nome',
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(width: PmgSpacing.xxxs),
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'Celular',
                controller: TextEditingController(),
              ),
            )
          ],
        ),
        const SizedBox(height: PmgSpacing.nano),
        Row(
          children: [
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'CPF',
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(width: PmgSpacing.xxxs),
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'E-mail',
                controller: TextEditingController(),
              ),
            )
          ],
        )
      ],
    );
  }
}
