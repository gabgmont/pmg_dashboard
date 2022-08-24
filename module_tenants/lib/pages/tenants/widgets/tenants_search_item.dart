import 'package:flutter/material.dart';
import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import '../../../models/resumed_tenants_model.dart';

class TenantsSearchItem extends StatelessWidget {
  final ResumedTenantsModel tenantsModel;
  const TenantsSearchItem({Key? key, required this.tenantsModel})
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
                  tenantsModel.name,
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  tenantsModel.cpf,
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  tenantsModel.phone,
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '${tenantsModel.processesQuantity}',
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
                onTap: () => Modular.to.pushNamed(PmgRoutes.tenantDetail),
              )),
            ),
          ],
        ),
      );
}
