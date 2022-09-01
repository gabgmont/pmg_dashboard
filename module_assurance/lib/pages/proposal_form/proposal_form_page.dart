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

import 'widgets/proprietary_data_form.dart';
import 'widgets/realty_data_form.dart';
import 'widgets/select_covers_form.dart';
import 'widgets/value_confirmation_form.dart';

class ProposalFormPage extends StatelessWidget {
  const ProposalFormPage({Key? key}) : super(key: key);

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
                      'Compartilhe os dados abaixo para elaboração da proposta de seguro.',
                      style: PmgTypography.bodyLargeSemiBold(
                          color: PmgColors.neutralDark),
                    ),
                  )
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
                    Text(
                      'Valores base para contratação deste seguro',
                      style: PmgTypography.bodySmallSemiBold(
                          color: PmgColors.neutralDark),
                    ),
                    const SizedBox(height: PmgSpacing.xxxs),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(
                                text: 'Aluguel: ',
                                style: PmgTypography.bodyTinySemiBold(
                                    color: PmgColors.neutralDark),
                                children: [
                                  TextSpan(
                                      text: 'R\$1.350,00',
                                      style: PmgTypography.bodyTiny(
                                          color: PmgColors.neutralDark))
                                ])),
                            const SizedBox(height: PmgSpacing.femto),
                            Text.rich(TextSpan(
                                text: 'Condomínio: ',
                                style: PmgTypography.bodyTinySemiBold(
                                    color: PmgColors.neutralDark),
                                children: [
                                  TextSpan(
                                      text: 'R\$350,00',
                                      style: PmgTypography.bodyTiny(
                                          color: PmgColors.neutralDark))
                                ])),
                            const SizedBox(height: PmgSpacing.femto),
                            Text.rich(TextSpan(
                                text: 'IPTU: ',
                                style: PmgTypography.bodyTinySemiBold(
                                    color: PmgColors.neutralDark),
                                children: [
                                  TextSpan(
                                      text: 'R\$35,00',
                                      style: PmgTypography.bodyTiny(
                                          color: PmgColors.neutralDark))
                                ])),
                          ],
                        ),
                        const SizedBox(width: PmgSpacing.xs),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(
                                text: 'Água: ',
                                style: PmgTypography.bodyTinySemiBold(
                                    color: PmgColors.neutralDark),
                                children: [
                                  TextSpan(
                                      text: 'R\$250,00',
                                      style: PmgTypography.bodyTiny(
                                          color: PmgColors.neutralDark))
                                ])),
                            const SizedBox(height: PmgSpacing.femto),
                            Text.rich(TextSpan(
                                text: 'Luz: ',
                                style: PmgTypography.bodyTinySemiBold(
                                    color: PmgColors.neutralDark),
                                children: [
                                  TextSpan(
                                      text: 'R\$150,00',
                                      style: PmgTypography.bodyTiny(
                                          color: PmgColors.neutralDark))
                                ])),
                            const SizedBox(height: PmgSpacing.femto),
                            Text.rich(TextSpan(
                                text: 'Gás: ',
                                style: PmgTypography.bodyTinySemiBold(
                                    color: PmgColors.neutralDark),
                                children: [
                                  TextSpan(
                                      text: 'R\$150,00',
                                      style: PmgTypography.bodyTiny(
                                          color: PmgColors.neutralDark))
                                ])),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: PmgSpacing.xxs)
                  ]),
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
                  Expanded(child: ProprietaryDataForm()),
                  SizedBox(width: PmgSpacing.xs),
                  Expanded(child: RealtyDataForm()),
                  SizedBox(width: PmgSpacing.xs),
                  Expanded(child: ValueConfirmationForm()),
                  SizedBox(width: PmgSpacing.xs),
                  Expanded(child: SelectCoversForm()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
