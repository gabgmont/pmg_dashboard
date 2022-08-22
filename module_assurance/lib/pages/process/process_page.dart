import 'package:flutter/material.dart';
import 'package:module_assurance/model/process_historic.dart';
import 'package:module_assurance/pages/process/widgets/process_conditions.dart';
import 'package:module_assurance/pages/process/widgets/process_historic_header.dart';
import 'package:module_assurance/pages/process/widgets/process_personal_data.dart';
import 'package:module_assurance/pages/process/widgets/process_status_row.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'widgets/process_header.dart';
import 'widgets/process_historic_item.dart';

class ProcessPage extends StatelessWidget {
  final Process? process;
  const ProcessPage({Key? key, required this.process}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.only(
          left: PmgSpacing.xs, top: PmgSpacing.xs, right: PmgSpacing.xs),
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate(
            [
              ProcessHeader(
                number: '${process?.number}',
                startDate: process?.startDate,
              ),
              const SizedBox(height: PmgSpacing.xs),
              ProcessPersonalData(process: process),
              const SizedBox(height: PmgSpacing.md),
              ProcessConditions(process: process),
              const SizedBox(height: PmgSpacing.md),
              const ProcessStatusRow(),
              const SizedBox(height: PmgSpacing.md),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      ProcessHistoricHeader(onTap: () {}),
                      const SizedBox(height: PmgSpacing.xxxs),
                      ProcessHistoricItem(
                        historic: ProcessHistoric(
                            event: 'Seguradora aprovou a analise',
                            date: '11/05/2022'),
                      ),
                      ProcessHistoricItem(
                        historic: ProcessHistoric(
                            event: 'Seguradora aprovou a analise',
                            date: '11/05/2022'),
                      ),
                      ProcessHistoricItem(
                        historic: ProcessHistoric(
                            event: 'Seguradora aprovou a analise',
                            date: '11/05/2022'),
                      ),
                      ProcessHistoricItem(
                        historic: ProcessHistoric(
                            event: 'Seguradora aprovou a analise',
                            date: '11/05/2022'),
                      ),
                                                  ProcessHistoricItem(
                        historic: ProcessHistoric(
                            event: 'Seguradora aprovou a analise',
                            date: '11/05/2022'),
                      ),
                      ProcessHistoricItem(
                        historic: ProcessHistoric(
                            event: 'Seguradora aprovou a analise',
                            date: '11/05/2022'),
                      ),
                      ProcessHistoricItem(
                        historic: ProcessHistoric(
                            event: 'Seguradora aprovou a analise',
                            date: '11/05/2022'),
                      ),
                      ProcessHistoricItem(
                        historic: ProcessHistoric(
                            event: 'Seguradora aprovou a analise',
                            date: '11/05/2022'),
                      ),
                    ],
                  )),
                  const Spacer(),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: PmgSpacing.md),
                        child: Row(
                          children: [
                            PmgIcon(
                              process?.status.actionIcon ?? PmgIcons.close,
                              size: 80,
                              color: PmgColors.primaryDark,
                            ),
                            Text(
                              process?.status.description ?? 'Enviar',
                              style: PmgTypography.bodyMedium(
                                  color: PmgColors.primaryDark),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
