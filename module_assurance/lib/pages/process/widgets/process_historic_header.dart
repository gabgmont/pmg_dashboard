import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProcessHistoricHeader extends StatelessWidget {
  final VoidCallback onTap;
  const ProcessHistoricHeader({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Text(
            'Histórico',
            style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
          ),
          const SizedBox(width: PmgSpacing.xxxs),
          PmgIcon(
            PmgIcons.add,
            color: PmgColors.neutralDark,
            onTap: onTap,
          )
        ],
      );
}
