import 'package:flutter/material.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'widget/page_tile.dart';
import 'widget/process_item_resumed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: PmgSpacing.xs, top: PmgSpacing.xs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: PmgSpacing.xxxs),
            child: Text('A fazer',
                style: PmgTypography.h3SemiBold(color: PmgColors.neutralDark)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PageTile(
                  label: 'Em análise',
                  selected: true,
                  onTap: () {},
                ),
                PageTile(
                  label: 'Dados do proprietário',
                  selected: false,
                  onTap: () {},
                ),
                PageTile(
                  label: 'Documentos',
                  selected: false,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: PmgSpacing.micro),
          Padding(
            padding: const EdgeInsets.only(right: PmgSpacing.xs),
            child: ListView(
              shrinkWrap: true,
              children: [
                ProcessItemResumed(
                  process: Process(
                    number: 99944827,
                    status: ProcessStatus.validatingForm,
                    tenantName: 'Jose da Silva',
                    insuranceCompany: 'Porto Seguro',
                    startDate: '01/01/2022',
                    expirationDate: '01/01/2023',
                  ),
                  onTap: () {},
                ),
                ProcessItemResumed(
                  process: Process(
                    number: 99144427,
                    status: ProcessStatus.sendToInsuranceCompany,
                    tenantName: 'Claudio aparecido',
                    insuranceCompany: 'Pottencial',
                    startDate: '01/01/2022',
                    expirationDate: '01/01/2023',
                  ),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
