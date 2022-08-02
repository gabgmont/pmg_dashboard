import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class PageTile extends StatelessWidget {
  final String label;
  final bool selected;
  final Function() onTap;
  const PageTile(
      {Key? key,
      required this.label,
      required this.selected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 4,
              color: selected ? PmgColors.primaryLight : PmgColors.neutralLight,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: PmgSpacing.micro, horizontal: PmgSpacing.xxxs),
          child: Text(
            label,
            style:
                PmgTypography.bodySmallSemiBold(color: PmgColors.neutralDark),
          ),
        ),
      ),
    );
  }
}
