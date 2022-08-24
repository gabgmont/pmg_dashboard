import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class DialogCancelConfirm extends StatelessWidget {
  const DialogCancelConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PmgSpacing.xxxs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cancelar processo N° 1234546',
              style: PmgTypography.bodyTiny(color: PmgColors.neutralDark)),
          const SizedBox(height: PmgSpacing.xxxs),
          Center(
            child: Text('Deseja realmente\ncancelar o processo?',
                textAlign: TextAlign.center,
                style: PmgTypography.bodyLargeSemiBold(
                    color: PmgColors.neutralDark)),
          ),
          const SizedBox(height: PmgSpacing.xxxs),
          Text('Motivo informado:',
              style: PmgTypography.bodySmallSemiBold(
                  color: PmgColors.neutralDark)),
          const SizedBox(height: PmgSpacing.femto),
          Text('Desisti do seguro',
              style: PmgTypography.bodySmall(color: PmgColors.neutralDark)),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: PmgButton(
                    label: 'Confirmar',
                    buttonSize: PmgButtonSize.medium,
                    onTap: Modular.to.pop),
              ),
              const SizedBox(width: PmgSpacing.nano),
              Expanded(
                child: PmgButton(
                  label: 'Cancelar',
                  buttonType: PmgButtonType.outline,
                  buttonSize: PmgButtonSize.medium,
                  onTap: Modular.to.pop,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
