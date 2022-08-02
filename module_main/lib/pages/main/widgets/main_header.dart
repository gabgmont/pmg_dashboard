import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: PmgColors.primaryLight,
        height: 100,
        width: MediaQuery.of(context).size.width - 120,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: PmgSpacing.xxxs),
              child: Text.rich(TextSpan(
                text: 'Bem vindo,\n',
                style:
                    PmgTypography.bodyLargeSemiBold(color: PmgColors.monoWhite),
                children: [
                  TextSpan(text: 'Gabriel!', style: PmgTypography.bodyLarge()),
                ],
              )),
            ),
            const Spacer(),
            Text('Sair',
                style: PmgTypography.bodyMediumSemiBold(
                    color: PmgColors.monoWhite)),
            const SizedBox(width: PmgSpacing.nano),
            PmgIcon(
              PmgIcons.logout,
              size: 40,
              color: PmgColors.monoWhite,
              onTap: () {},
            ),
            const SizedBox(width: PmgSpacing.xxxs)
          ],
        ),
      );
}
