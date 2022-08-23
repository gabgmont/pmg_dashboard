import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_commons/widgets/process_tile.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';
import 'package:module_real_state/model/attendants_model.dart';

import 'widgets/change_password_data.dart';
import 'widgets/personal_data.dart';
import 'widgets/username_data.dart';

class AttendantDetailPage extends StatelessWidget {
  final Attendants? attendant;
  const AttendantDetailPage({Key? key, required this.attendant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PmgSpacing.xs),
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
                const AttendantPersonalData(),
                const Spacer(),
                const UsernameData(),
                const SizedBox(width: PmgSpacing.xxxs),
                const ChangePasswordData()
              ],
            ),
            const SizedBox(height: PmgSpacing.md),
            Text(
              'Processos',
              style:
                  PmgTypography.bodyLargeSemiBold(color: PmgColors.neutralDark),
            ),
            const SizedBox(height: PmgSpacing.xxxs),
            ...buildProcesses(),
            const SizedBox(height: PmgSpacing.xs)
          ],
        ),
      ),
    ));
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
