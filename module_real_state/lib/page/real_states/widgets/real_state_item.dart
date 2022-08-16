import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import '../../../model/real_state_model.dart';

class RealStateItem extends StatelessWidget {
  final RealState? realState;
  const RealStateItem({Key? key, required this.realState}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: PmgRadius.medium,
              border: const Border.fromBorderSide(
                  BorderSide(color: PmgColors.neutralLight, width: 1))),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(PmgSpacing.femto),
                  child: realState?.image != null
                      ? CachedNetworkImage(imageUrl: realState!.image!)
                      : Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: PmgColors.neutralLight,
                              borderRadius: PmgRadius.medium),
                          child: const PmgIcon(
                            PmgIcons.add,
                            color: PmgColors.neutral,
                            size: 92,
                          ),
                        ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(realState?.name ?? 'Nova imobiliaria',
                      style: PmgTypography.bodyTinySemiBold(
                          color: PmgColors.neutralDark)),
                ),
              ),
            ],
          ),
        ),
      );
}
