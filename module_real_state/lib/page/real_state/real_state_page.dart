import 'package:flutter/material.dart';
import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_commons/widgets/process_tile.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import '../../model/real_state_model.dart';

class RealStatePage extends StatelessWidget {
  final RealState? realState;
  const RealStatePage({Key? key, required this.realState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: PmgSpacing.xs),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: PmgSpacing.xs),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PmgIcon(
                      PmgIcons.arrow_left,
                      size: 40,
                      color: PmgColors.neutralDark,
                      onTap: Modular.to.pop,
                    ),
                    const SizedBox(width: PmgSpacing.nano),
                    Container(
                      height: 100,
                      width: 240,
                      decoration: BoxDecoration(
                          color: PmgColors.neutral,
                          borderRadius: PmgRadius.medium),
                    ),
                    const SizedBox(width: PmgSpacing.xxs),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Imobiliaria ${realState?.name}',
                            style: PmgTypography.bodyLarge(
                                color: PmgColors.neutralDark)),
                        const SizedBox(height: PmgSpacing.femto),
                        Text('Imobiliaria ${realState?.name}',
                            style: PmgTypography.bodySmall(
                                color: PmgColors.neutralDark)),
                        const SizedBox(height: PmgSpacing.femto),
                        PmgButton(
                            label: 'Editar',
                            leftIcon: PmgIcons.edit,
                            buttonType: PmgButtonType.text,
                            buttonSize: PmgButtonSize.small,
                            textColor: PmgColors.primaryDark,
                            onTap: () => Modular.to
                                .pushNamed(PmgRoutes.realStatesRegisterPage))
                      ],
                    ),
                    const SizedBox(width: PmgSpacing.xs),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Contato',
                            style: PmgTypography.bodyMediumSemiBold(
                                color: PmgColors.neutralDark)),
                        const SizedBox(height: PmgSpacing.femto),
                        Text('Celular: ${realState?.phone}',
                            style: PmgTypography.bodyTiny(
                                color: PmgColors.neutralDark)),
                        const SizedBox(height: PmgSpacing.femto),
                        Text('Email: ${realState?.mail}',
                            style: PmgTypography.bodyTiny(
                                color: PmgColors.neutralDark)),
                        const SizedBox(height: PmgSpacing.femto),
                      ],
                    ),
                    const Spacer(),
                    PmgButton(
                        label: 'Atendentes',
                        rightIcon: PmgIcons.arrow_right,
                        buttonType: PmgButtonType.text,
                        onTap: () {})
                  ],
                ),
                const SizedBox(height: PmgSpacing.md),
                Text(
                  'Processos',
                  style: PmgTypography.bodyLargeSemiBold(
                      color: PmgColors.neutralDark),
                ),
                const SizedBox(height: PmgSpacing.xxxs),
                ...buildProcesses()
              ],
            ))));
  }

  buildProcesses() => [
        ProcessTile(
          process: Process(
              number: 99944827,
              status: ProcessStatus.validatingForm,
              principalTenantName: 'Jose da Silva',
              insuranceCompany: 'Pottencial',
              startDate: '01/01/2022',
              expirationDate: '01/01/2023',
              street: 'Rua Iguape',
              complement: 'BL 10, APTO 12',
              city: 'Ribeirao Preto',
              district: 'Jardim Paulista',
              uf: 'SP',
              tenants: ['Joaozin', 'Maria']),
        ),
        ProcessTile(
          process: Process(
              number: 99944827,
              status: ProcessStatus.validatingForm,
              principalTenantName: 'Jose da Silva',
              insuranceCompany: 'Pottencial',
              startDate: '01/01/2022',
              expirationDate: '01/01/2023',
              street: 'Rua Iguape',
              complement: 'BL 10, APTO 12',
              city: 'Ribeirao Preto',
              district: 'Jardim Paulista',
              uf: 'SP',
              tenants: ['Joaozin', 'Maria']),
        ),
        ProcessTile(
          process: Process(
              number: 99944827,
              status: ProcessStatus.validatingForm,
              principalTenantName: 'Jose da Silva',
              insuranceCompany: 'Pottencial',
              startDate: '01/01/2022',
              expirationDate: '01/01/2023',
              street: 'Rua Iguape',
              complement: 'BL 10, APTO 12',
              city: 'Ribeirao Preto',
              district: 'Jardim Paulista',
              uf: 'SP',
              tenants: ['Joaozin', 'Maria']),
        ),
      ];
}
