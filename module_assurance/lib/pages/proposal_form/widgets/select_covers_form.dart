import 'package:flutter/cupertino.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/components/control/check_box/pmg_check_box.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class SelectCoversForm extends StatelessWidget {
  const SelectCoversForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Text(
            'Deseja cobertura para os itens abaixo?',
            textAlign: TextAlign.center,
            style:
                PmgTypography.bodyMediumSemiBold(color: PmgColors.neutralDark),
          ),
        ),
        const SizedBox(height: PmgSpacing.xxxs),
        Row(
          children: [
            PmgCheckBox(onChange: (_) {}),
            const SizedBox(width: PmgSpacing.nano),
            Text('Danos ao ímovel',
                style: PmgTypography.bodyTiny(color: PmgColors.neutralDark))
          ],
        ),
        const SizedBox(height: PmgSpacing.nano),
        Row(
          children: [
            PmgCheckBox(onChange: (_) {}),
            const SizedBox(width: PmgSpacing.nano),
            Text('Pintura interna',
                style: PmgTypography.bodyTiny(color: PmgColors.neutralDark))
          ],
        ),
        const SizedBox(height: PmgSpacing.nano),
        Row(
          children: [
            PmgCheckBox(onChange: (_) {}),
            const SizedBox(width: PmgSpacing.nano),
            Text('Pintura externa',
                style: PmgTypography.bodyTiny(color: PmgColors.neutralDark))
          ],
        ),
        const SizedBox(height: PmgSpacing.nano),
        Row(
          children: [
            PmgCheckBox(onChange: (_) {}),
            const SizedBox(width: PmgSpacing.nano),
            Text('Multa por recisão',
                style: PmgTypography.bodyTiny(color: PmgColors.neutralDark))
          ],
        ),
        const SizedBox(height: PmgSpacing.xxxs),
        PmgButton(
          label: 'Enviar',
          rightIcon: PmgIcons.arrow_right,
          buttonSize: PmgButtonSize.extraLarge,
          onTap: () {},
        )
      ],
    );
  }
}
