import 'package:flutter/material.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProcessConditions extends StatelessWidget {
  final Process? process;
  const ProcessConditions({Key? key, required this.process}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Inquilinos',
                    style: PmgTypography.bodySmallSemiBold(
                        color: PmgColors.neutralDark)),
                ..._buildTenants()
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: PmgSpacing.xs),
              child: Column(
                children: [
                  PmgButton(
                    label: 'Condições da aprovação',
                    disabled: true,
                    buttonType: PmgButtonType.outline,
                    buttonSize: PmgButtonSize.medium,
                    onTap: () {},
                  ),
                  const SizedBox(height: PmgSpacing.xxxs),
                  PmgButton(
                    label: 'Valores base',
                    disabled: true,
                    buttonType: PmgButtonType.outline,
                    buttonSize: PmgButtonSize.medium,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: PmgSpacing.xs),
              child: Column(
                children: [
                  PmgButton(
                    label: 'Importâncias seguradas',
                    disabled: true,
                    buttonType: PmgButtonType.outline,
                    buttonSize: PmgButtonSize.medium,
                    onTap: () {},
                  ),
                  const SizedBox(height: PmgSpacing.xxxs),
                  PmgButton(
                    label: 'Condições especiais',
                    disabled: true,
                    buttonType: PmgButtonType.outline,
                    buttonSize: PmgButtonSize.medium,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  _buildTenants() =>
      process?.tenants
          .map((e) => Padding(
                padding: const EdgeInsets.only(top: PmgSpacing.pico),
                child: Text(e,
                    style:
                        PmgTypography.bodySmall(color: PmgColors.neutralDark)),
              ))
          .toList() ??
      [
        Padding(
          padding: const EdgeInsets.only(top: PmgSpacing.pico),
          child: Text('Sem inquilinos.',
              style: PmgTypography.bodySmall(color: PmgColors.neutralDark)),
        )
      ];
}
