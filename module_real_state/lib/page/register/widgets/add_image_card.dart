import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';

class AddImageCard extends StatelessWidget {
  final VoidCallback onTap;
  const AddImageCard({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Container(
          height: 168,
          width: 232,
          padding: const EdgeInsets.all(PmgSpacing.femto),
          decoration: BoxDecoration(
              color: PmgColors.monoWhite,
              border: const Border.fromBorderSide(
                  BorderSide(color: PmgColors.neutralLight)),
              borderRadius: PmgRadius.medium),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: PmgColors.neutralLight, borderRadius: PmgRadius.medium),
            child:
                const PmgIcon(PmgIcons.add, size: 92, color: PmgColors.neutral),
          ),
        ),
      );
}
