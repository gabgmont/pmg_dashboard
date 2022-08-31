import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/components/drop_down/pmg_drop_down.dart';
import 'package:module_design/components/drop_down/pmg_drop_down_item.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ApprovalConditionsForm extends StatelessWidget {
  const ApprovalConditionsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Condições da aprovação',
          style: PmgTypography.bodyMediumSemiBold(color: PmgColors.neutralDark),
        ),
        const SizedBox(height: PmgSpacing.xxs),
        PmgDropDown(
            clearOption: false,
            itens: [
              PmgDropDownItem(value: 0, content: const Text('Seguradora'))
            ],
            onItemSelected: (_) {}),
        const SizedBox(height: 22),
        PmgTextField(
            label: 'Validade da aprovação',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Tipo de Locação', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Valor máximo para locação',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Valor informado do aluguel',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Custo mensal do seguro',
            controller: TextEditingController()),
      ],
    );
  }
}
