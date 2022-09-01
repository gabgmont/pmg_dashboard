import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/components/drop_down/pmg_drop_down.dart';
import 'package:module_design/components/drop_down/pmg_drop_down_item.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProprietaryDataForm extends StatelessWidget {
  const ProprietaryDataForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Text(
            'Dados do proprietário do imóvel',
            textAlign: TextAlign.center,
            style: PmgTypography.bodyMediumSemiBold(color: PmgColors.neutralDark),
          ),
        ),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Nome', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'CPF', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'RG', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(label: 'Profissão', controller: TextEditingController()),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgDropDown(
            clearOption: false,
            itens: [
              PmgDropDownItem(value: 0, content: const Text('Seguradora'))
            ],
            onItemSelected: (_) {}),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgTextField(
            label: 'Data de nascimento', controller: TextEditingController()),
      ],
    );
  }
}
