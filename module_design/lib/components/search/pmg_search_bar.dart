import 'package:flutter/material.dart';

import '../../assets/pmg_icons.dart';
import '../../styles/pmg_colors.dart';
import '../../styles/pmg_radius.dart';
import '../../styles/pmg_typography.dart';

class PmgSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String hint;
  const PmgSearchBar({Key? key, required this.controller, this.onChanged, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 40,
        width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          color: PmgColors.monoWhite,
          borderRadius: PmgRadius.medium,
          boxShadow: const [
            BoxShadow(
                color: PmgColors.neutralLight,
                offset: Offset(1, 2),
                blurRadius: 1,
                spreadRadius: 1),
          ],
        ),
        child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          style: PmgTypography.bodySmall(color: PmgColors.neutralDark),
          cursorHeight: 22,
          cursorColor: PmgColors.primaryDark,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: PmgTypography.bodySmall(color: PmgColors.neutral),
            labelStyle: PmgTypography.bodySmall(color: PmgColors.neutral),
            contentPadding: const EdgeInsets.only(bottom: 8),
            icon: const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: PmgIcon(PmgIcons.search,
                  size: 30, color: PmgColors.primaryDark),
            ),
            border: InputBorder.none,
          ),
        ),
      );
}
