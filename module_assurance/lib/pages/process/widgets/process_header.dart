import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'dialog_cancel_process.dart';

class ProcessHeader extends StatelessWidget {
  final String? number;
  final String? startDate;
  const ProcessHeader({Key? key, required this.number, required this.startDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  PmgIcon(
                    PmgIcons.arrow_left,
                    size: 40,
                    color: PmgColors.neutralDark,
                    onTap: Modular.to.pop,
                  ),
                  const SizedBox(width: PmgSpacing.nano),
                  Text(
                    'Processo N° $number',
                    style: PmgTypography.h3SemiBold(),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text.rich(TextSpan(
                  text: 'Emitido: ',
                  style: PmgTypography.bodySmallSemiBold(),
                  children: [TextSpan(text: startDate)]))
            ],
          ),
          PmgButton(
            label: 'Cancelar processo',
            textColor: PmgColors.statusError,
            buttonSize: PmgButtonSize.medium,
            buttonType: PmgButtonType.text,
            onTap: () => showDialog(
                context: context,
                builder: (context) =>
                    AlertDialog(
                      content: SizedBox(
                        width: 600,
                        height: 309,
                        child: DialogCancelProcess()))),
          )
        ],
      );
}
