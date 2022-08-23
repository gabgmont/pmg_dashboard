import 'package:flutter/material.dart';
import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import '../../../model/attendants_model.dart';

class AttendantsSearchItem extends StatelessWidget {
  final Attendants attendant;
  const AttendantsSearchItem({Key? key, required this.attendant})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: PmgSpacing.femto),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  attendant.name,
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  attendant.cpf,
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  attendant.phone,
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  attendant.username,
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
                ),
              ),
            ),
            Expanded(
              child: Center(
                  child: PmgIcon(
                PmgIcons.more_horizontal,
                size: 40,
                color: PmgColors.primaryDark,
                onTap: () => Modular.to
                    .pushNamed(PmgRoutes.attendantDetail, arguments: attendant),
              )),
            ),
          ],
        ),
      );
}
