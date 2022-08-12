import 'package:flutter/material.dart';
import 'package:module_assurance/pages/process/widgets/process_conditions.dart';
import 'package:module_assurance/pages/process/widgets/process_personal_data.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';

import 'widgets/process_header.dart';

class ProcessPage extends StatelessWidget {
  final Process? process;
  const ProcessPage({Key? key, required this.process}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(PmgSpacing.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: PmgSpacing.xxxs),
            child: PmgIcon(
              PmgIcons.arrow_left,
              size: 40,
              color: PmgColors.neutralDark,
              onTap: Modular.to.pop,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ProcessHeader(
                  number: '${process?.number}',
                  startDate: process?.startDate,
                ),
                const SizedBox(height: PmgSpacing.xs),
                ProcessPersonalData(process: process),
                const SizedBox(height: PmgSpacing.md),
                ProcessConditions(process: process),
                const SizedBox(height: PmgSpacing.md),
               ],
            ),
          )
        ],
      ),
    ));
  }
}
