import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class RealStatePage extends StatelessWidget {
  const RealStatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: PmgSpacing.xs),
            child: SingleChildScrollView(
                child: Column(
              children: [
                const SizedBox(height: PmgSpacing.xs),
                Row(
                  children: [
                    PmgIcon(
                      PmgIcons.arrow_left,
                      size: 40,
                      color: PmgColors.neutralDark,
                      onTap: Modular.to.pop,
                    ),
                    const SizedBox(width: PmgSpacing.nano),
                    Text('Imobiliarias',
                        style: PmgTypography.h3SemiBold(
                            color: PmgColors.neutralDark)),
                    const SizedBox(width: PmgSpacing.xxxs),
                    PmgButton(
                        label: 'Salvar',
                        buttonType: PmgButtonType.text,
                        onTap: () {})
                  ],
                ),
              ],
            ))));
  }
}
