import 'package:flutter/material.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProcessStatusRow extends StatelessWidget {
  const ProcessStatusRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Andamento', style: PmgTypography.bodySmallSemiBold()),
          const SizedBox(height: PmgSpacing.xs),
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: Container(
                    height: 10,
                    width: double.infinity,
                    color: PmgColors.neutralLight,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildStatus(),
              )
            ],
          )
        ],
      );

  _buildStatus() => (_processStatus() as List)
      .map((map) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: PmgColors.neutralLight, shape: BoxShape.circle),
                child: map['icon'] != null
                    ? PmgIcon(
                        map['icon'],
                        color: PmgColors.neutralDark,
                      )
                    : const SizedBox(),
              ),
              const SizedBox(height: PmgSpacing.xxxs),
              SizedBox(
                width: 100,
                child: Text((map['status'] as ProcessStatus).description,
                    textAlign: TextAlign.center,
                    style:
                        PmgTypography.bodyTiny(color: PmgColors.neutralDark)),
              )
            ],
          ))
      .toList();

  _processStatus() => [
        {'status': ProcessStatus.validatingForm, 'icon': PmgIcons.eye},
        {'status': ProcessStatus.sendToAnalysys, 'icon': null},
        {'status': ProcessStatus.analyzing, 'icon': null},
        {'status': ProcessStatus.approved, 'icon': PmgIcons.eye},
        {'status': ProcessStatus.emittingProposal, 'icon': PmgIcons.attach},
        {'status': ProcessStatus.signedDocuments, 'icon': PmgIcons.attach},
        {'status': ProcessStatus.sendToInsuranceCompany, 'icon': PmgIcons.eye},
        {'status': ProcessStatus.emittingPolicy, 'icon': PmgIcons.attach},
        {'status': ProcessStatus.policyEmmited, 'icon': null},
        {'status': ProcessStatus.concluded, 'icon': null},
      ];
}
