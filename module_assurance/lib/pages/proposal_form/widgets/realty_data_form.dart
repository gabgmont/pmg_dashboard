import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class RealtyDataForm extends StatelessWidget {
  const RealtyDataForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Text(
            'Dados do imóvel locado',
            textAlign: TextAlign.center,
            style:
                PmgTypography.bodyMediumSemiBold(color: PmgColors.neutralDark),
          ),
        ),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'CEP', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Rua', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Numero', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Complemento', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Bairro', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Data início contrato', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Data término contrato',
            controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Índice reajuste contrato',
            controller: TextEditingController()),
      ],
    );
  }
}
