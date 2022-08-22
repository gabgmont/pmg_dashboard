import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'widgets/add_attendant_widget.dart';
import 'widgets/add_image_card.dart';

class RealStateRegisterPage extends StatelessWidget {
  const RealStateRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PmgSpacing.xs),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: PmgSpacing.xs),
                Row(
                  children: [
                    PmgIcon(
                      PmgIcons.arrow_left,
                      size: 40,
                      color: PmgColors.neutralDark,
                      onTap: Modular.to.pop,
                    ),
                    const SizedBox(width: PmgSpacing.nano),
                    Text('Imobiliarias',
                        style: PmgTypography.h3SemiBold(
                            color: PmgColors.neutralDark)),
                    const SizedBox(width: PmgSpacing.xxxs),
                    PmgButton(
                        label: 'Salvar',
                        buttonType: PmgButtonType.text,
                        onTap: () {})
                  ],
                ),
                const SizedBox(height: PmgSpacing.xs),
                Text('Adicionar imagem',
                    style: PmgTypography.bodySmallSemiBold(
                        color: PmgColors.neutralDark)),
                const SizedBox(height: PmgSpacing.xxxs),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddImageCard(onTap: () {}),
                    const SizedBox(width: PmgSpacing.xxxs),
                    Column(
                      children: [
                        SizedBox(
                            width: 255,
                            child: PmgTextField(
                                label: 'CNPJ',
                                hint: '99.999.999/0001-99',
                                controller: TextEditingController())),
                        const SizedBox(height: PmgSpacing.nano),
                        SizedBox(
                            width: 255,
                            child: PmgTextField(
                                label: 'Nome',
                                hint: 'Nome',
                                controller: TextEditingController())),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: PmgSpacing.xxs),
                Row(
                  children: [
                    Text('Atendentes',
                        style: PmgTypography.bodyLarge(
                            color: PmgColors.neutralDark)),
                    const SizedBox(width: PmgSpacing.xs),
                    InkWell(
                      onTap: () {},
                      borderRadius: PmgRadius.circular,
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.fromBorderSide(
                                BorderSide(color: PmgColors.neutral))),
                        child: const PmgIcon(PmgIcons.add,
                            color: PmgColors.neutral),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: PmgSpacing.xxxs),
                AddAttendantWidget()
              ],
            ),
          ),
        ),
      );
}
