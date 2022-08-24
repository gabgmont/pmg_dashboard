import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/components/control/switch/pmg_switch.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class DialogNewStory extends StatelessWidget {
  const DialogNewStory({Key? key}) : super(key: key);

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
            child: Text('Novo Histórico',
                textAlign: TextAlign.center,
                style: PmgTypography.bodyLargeSemiBold(
                    color: PmgColors.neutralDark)),
          ),
          const SizedBox(height: PmgSpacing.xxxs),
          Row(children: [
            PmgIcon(PmgIcons.attach, color: PmgColors.primary, onTap: () {}),
            const SizedBox(width: PmgSpacing.femto),
            Text(
              'Anexar',
              style: PmgTypography.bodyTiny(color: PmgColors.neutralDark),
            ),
            const Spacer(),
            Text(
              'Interno',
              style: PmgTypography.bodyTiny(color: PmgColors.neutralDark),
            ),
            const SizedBox(width: PmgSpacing.femto),
            PmgSwitch(onSwitch: (_) {}, value: true)
          ]),
          const SizedBox(height: PmgSpacing.xxxs),
          TextFormField(
            maxLines: 4,
            decoration: InputDecoration( 
                hintText: 'Digite o motivo...',
                hintStyle: PmgTypography.bodyTiny(color: PmgColors.neutral),
                border: OutlineInputBorder(
                    borderRadius: PmgRadius.medium,
                    borderSide:
                        const BorderSide(color: PmgColors.neutral, width: 1)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: PmgRadius.medium,
                    borderSide:
                        const BorderSide(color: PmgColors.neutral, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: PmgRadius.medium,
                    borderSide:
                        const BorderSide(color: PmgColors.neutral, width: 1))),
          ),
          const SizedBox(height: PmgSpacing.xxxs),
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
