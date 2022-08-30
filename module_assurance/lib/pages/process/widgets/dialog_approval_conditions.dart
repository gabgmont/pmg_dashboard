import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class DialogApprovalConditions extends StatelessWidget {
  const DialogApprovalConditions({Key? key}) : super(key: key);

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
            child: Text('Condições da aprovação',
                textAlign: TextAlign.center,
                style: PmgTypography.bodyLargeSemiBold(
                    color: PmgColors.neutralDark)),
          ),
          const SizedBox(height: PmgSpacing.xxxs),
          Text.rich(TextSpan(
              text: 'Seguradora: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'Pottencial',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
          Text.rich(TextSpan(
              text: 'Validade de aprovação: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: '11/02/22',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
          Text.rich(TextSpan(
              text: 'Tipo de locação: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'Residencial',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
          Text.rich(TextSpan(
              text: 'Valor máximo para locação: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'R\$2.215,00',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
          Text.rich(TextSpan(
              text: 'Valor informado do aluguel: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'R\$1.350,00',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
          const SizedBox(height: PmgSpacing.femto),
          Text.rich(TextSpan(
              text: 'Custo mensal do seguro: ',
              style:
                  PmgTypography.bodyTinySemiBold(color: PmgColors.neutralDark),
              children: [
                TextSpan(
                    text: 'R\$180,90',
                    style: PmgTypography.bodyTiny(
                        color: PmgColors.neutralDark))
              ])),
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
