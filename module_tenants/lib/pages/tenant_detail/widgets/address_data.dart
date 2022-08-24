import 'package:flutter/material.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class AddressData extends StatelessWidget {
  const AddressData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 36,
          child: Text('Endereco',
              style: PmgTypography.bodyMediumSemiBold(
                  color: PmgColors.neutralDark)),
        ),
        const SizedBox(width: PmgSpacing.nano),
        Row(
          children: [
            SizedBox(
              width: 180,
              child: PmgTextField(
                label: 'CEP',
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(width: PmgSpacing.xxxs),
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'Cidade',
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(width: PmgSpacing.xxxs),
            SizedBox(
              width: 60,
              child: PmgTextField(
                label: 'UF',
                controller: TextEditingController(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'Rua',
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(width: PmgSpacing.xxxs),
            SizedBox(
              width: 250,
              child: PmgTextField(
                label: 'Cidade',
                controller: TextEditingController(),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 250,
          child: PmgTextField(
            label: 'Numero',
            controller: TextEditingController(),
          ),
        ),
      ],
    );
  }
}
