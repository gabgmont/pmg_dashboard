import 'package:flutter/material.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'dialog_approval_conditions.dart';
import 'dialog_base_values.dart';
import 'dialog_coverage.dart';
import 'dialog_special_condition.dart';

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
                    buttonType: PmgButtonType.outline,
                    buttonSize: PmgButtonSize.medium,
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            content: SizedBox(
                                width: 600,
                                height: 317,
                                child: DialogApprovalConditions()))),
                  ),
                  const SizedBox(height: PmgSpacing.xxxs),
                  PmgButton(
                    label: 'Valores base',
                    buttonType: PmgButtonType.outline,
                    buttonSize: PmgButtonSize.medium,
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            content: SizedBox(
                                width: 600,
                                height: 267,
                                child: DialogBaseValues()))),
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
                    buttonType: PmgButtonType.outline,
                    buttonSize: PmgButtonSize.medium,
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            content: SizedBox(
                                width: 600,
                                height: 287,
                                child: DialogCoverage()))),
                  ),
                  const SizedBox(height: PmgSpacing.xxxs),
                  PmgButton(
                    label: 'Condições especiais',
                    buttonType: PmgButtonType.outline,
                    buttonSize: PmgButtonSize.medium,
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            content: SizedBox(
                                width: 600,
                                height: 287,
                                child: DialogSpecialConditions()))),
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
