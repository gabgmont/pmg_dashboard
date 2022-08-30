import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class DialogCoverage extends StatelessWidget {
  const DialogCoverage({Key? key}) : super(key: key);

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
            child: Text('Importâncias seguradas\npara cada cobertura',
                textAlign: TextAlign.center,
                style: PmgTypography.bodyLargeSemiBold(
                    color: PmgColors.neutralDark)),
          ),
          const SizedBox(height: PmgSpacing.xxxs),
          Text.rich(TextSpan(
              text: 'Aluguel + Encargos: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'R\$40.500,00',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
          Text.rich(TextSpan(
              text: 'Danos ao imóvel: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'R\$8.100,00',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
          Text.rich(TextSpan(
              text: 'Pintura interna e/ou externa: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'R\$4.050,00',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
          Text.rich(TextSpan(
              text: 'Multa e recisão: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'R\$4.050,00 ',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
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
