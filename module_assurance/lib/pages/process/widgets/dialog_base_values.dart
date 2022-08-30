import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class DialogBaseValues extends StatelessWidget {
  const DialogBaseValues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PmgSpacing.xxxs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Processo N° 1234546',
              style: PmgTypography.bodyTiny(color: PmgColors.neutralDark)),
          const SizedBox(height: PmgSpacing.xxxs),
          Center(
            child: Text('Valores base para contratação\ndeste seguro',
                textAlign: TextAlign.center,
                style: PmgTypography.bodyLargeSemiBold(
                    color: PmgColors.neutralDark)),
          ),
          const SizedBox(height: PmgSpacing.xxxs),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: PmgButton(
                    label: 'Confirmar',
                    buttonSize: PmgButtonSize.medium,
                    onTap: Modular.to.pop),
              ),
              const SizedBox(width: PmgSpacing.nano),
              Expanded(
                child: PmgButton(
                  label: 'Cancelar',
                  buttonType: PmgButtonType.outline,
                  buttonSize: PmgButtonSize.medium,
                  onTap: Modular.to.pop,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
