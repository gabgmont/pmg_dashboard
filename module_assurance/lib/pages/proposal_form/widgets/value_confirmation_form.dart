import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/components/control/radio/pmg_radio.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'rad_choice_widget.dart';

class ValueConfirmationForm extends StatelessWidget {
  const ValueConfirmationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Text(
            'Confirmação dos valores garantidos',
            style:
                PmgTypography.bodyMediumSemiBold(color: PmgColors.neutralDark),
          ),
        ),
        const RadChoiceWidget(
          label: 'Forma de cobrança do aluguel',
          firstOption: 'Multa',
          secondOption: 'Bonificação',
        ),
        const SizedBox(height: PmgSpacing.xxxs),
        const RadChoiceWidget(
          label: 'Opção de seguro a ser contratato',
          firstOption: 'Completo',
          secondOption: 'Básico',
        ),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Aluguel', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Condominio', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'IPTU', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Água', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Luz', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Gás', controller: TextEditingController()),
      ],
    );
  }
}
