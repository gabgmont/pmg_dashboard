import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class AttendantsSearchHeader extends StatelessWidget {
  const AttendantsSearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: PmgSpacing.xxs),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Nome',
                      style: PmgTypography.bodyMediumSemiBold(
                          color: PmgColors.neutralDark),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'CPF',
                      style: PmgTypography.bodyMediumSemiBold(
                          color: PmgColors.neutralDark),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Celular',
                      style: PmgTypography.bodyMediumSemiBold(
                          color: PmgColors.neutralDark),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Usuário',
                      style: PmgTypography.bodyMediumSemiBold(
                          color: PmgColors.neutralDark),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Visualizar',
                      style: PmgTypography.bodyMediumSemiBold(
                          color: PmgColors.neutralDark),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Divider(
                height: 1,
                color: PmgColors.neutralDark,
              ),
            )
          ],
        ),
      );
}
