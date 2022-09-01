import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/assets/pmg_images.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'widgets/approval_conditions_form.dart';
import 'widgets/base_values_form.dart';
import 'widgets/covers_form.dart';

class ContractFormPage extends StatelessWidget {
  const ContractFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                PmgSpacing.xs,
                PmgSpacing.xs,
                PmgSpacing.xs,
                PmgSpacing.xs,
              ),
              child: Row(
                children: [
                  PmgIcon(
                    PmgIcons.arrow_left,
                    size: 40,
                    color: PmgColors.neutralDark,
                    onTap: Modular.to.pop,
                  ),
                  const SizedBox(width: PmgSpacing.xxxs),
                  const SizedBox(
                      height: 60, child: PmgImage(image: PmgImages.pmg_logo)),
                  const SizedBox(width: PmgSpacing.xxxs),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 256,
                    child: Text(
                      'Preencha os dados abaixo para solicitação dos dados do contrato para a imobiliária.',
                      style: PmgTypography.bodyLargeSemiBold(
                          color: PmgColors.neutralDark),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: PmgSpacing.xs),
              sliver: SliverToBoxAdapter(
                  child: Divider(color: PmgColors.neutralDark))),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
                horizontal: PmgSpacing.xs, vertical: PmgSpacing.xxs),
            sliver: SliverToBoxAdapter(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(child: ApprovalConditionsForm()),
                  SizedBox(width: PmgSpacing.xs),
                  Expanded(child: BaseValuesForm()),
                  SizedBox(width: PmgSpacing.xs),
                  Expanded(child: CoversForm()),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: PmgSpacing.xs),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: PmgSpacing.xxxs),
                  Text(
                    'Condições especiais aplicadas a essa aprovação',
                    style: PmgTypography.bodyLargeSemiBold(
                        color: PmgColors.neutralDark),
                  ),
                  const SizedBox(height: PmgSpacing.xxs),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: 'Digite o motivo...',
                        hintStyle:
                            PmgTypography.bodyTiny(color: PmgColors.neutral),
                        border: OutlineInputBorder(
                            borderRadius: PmgRadius.medium,
                            borderSide: const BorderSide(
                                color: PmgColors.neutral, width: 1)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: PmgRadius.medium,
                            borderSide: const BorderSide(
                                color: PmgColors.neutral, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: PmgRadius.medium,
                            borderSide: const BorderSide(
                                color: PmgColors.neutral, width: 1))),
                  ),
                  const SizedBox(height: PmgSpacing.xxs),
                  PmgButton(
                      label: 'Enviar',
                      buttonSize: PmgButtonSize.extraLarge,
                      rightIcon: PmgIcons.arrow_right,
                      onTap: () {}),
                  const SizedBox(height: PmgSpacing.xs),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
