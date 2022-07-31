import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_typography.dart';

class PageIconButton extends StatelessWidget {
  final PmgIcons icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;
  const PageIconButton(
      {Key? key,
      required this.icon,
      required this.selected,
      required this.onTap,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Stack(
                  children: [
                    Visibility(
                      visible: selected,
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: PmgColors.primaryDark,
                              borderRadius: PmgRadius.giant),
                        ),
                      ),
                    ),
                    Center(
                      child: PmgIcon(
                        icon,
                        size: 40,
                        color: PmgColors.monoWhite,
                        onTap: onTap,
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: !selected,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    label,
                    style:
                        PmgTypography.bodyTiny(color: PmgColors.monoWhite),
                  ),
                ),
              )
            ],
          ),
    ),
  );
}
