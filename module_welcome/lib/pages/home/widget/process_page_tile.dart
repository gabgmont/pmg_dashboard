import 'package:flutter/material.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProcessPageTile extends StatelessWidget {
  final ProcessStatus status;
  final bool selected;
  final Function() onTap;
  const ProcessPageTile(
      {Key? key,
      required this.status,
      required this.selected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 4,
              color: selected ? PmgColors.primaryLight : PmgColors.neutralLight,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: PmgSpacing.micro, horizontal: PmgSpacing.xxxs),
          child: Text(
            status.description,
            style:
                PmgTypography.bodySmallSemiBold(color: PmgColors.neutralDark),
          ),
        ),
      ),
    );
  }
}
