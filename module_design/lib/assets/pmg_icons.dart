// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_commons/export_commons.dart';

import '../styles/pmg_colors.dart';
import '../styles/pmg_radius.dart';

class PmgIcon extends StatelessWidget {
  final PmgIcons icon;
  final VoidCallback? onTap;
  final double? size;
  final Color? color;
  final Color? backgroundColor;
  final int badgeCount;
  const PmgIcon(
    this.icon, {
    Key? key,
    this.size,
    this.color,
    this.onTap,
    this.backgroundColor,
    this.badgeCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _hasBadge = badgeCount > 0;
    final _badgeCount = badgeCount > 9 ? 9 : badgeCount;
    final iconName = describeEnum(icon).toLowerCase();

    return Material(
      color: backgroundColor ?? Colors.transparent,
      child: Stack(
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: PmgRadius.radiusCircular,
            child: SvgPicture.asset(
              'assets/icons/$iconName.svg',
              package: 'module_design',
              height: size ?? 24,
              width: size ?? 24,
              color: color,
            ),
          ),
          Visibility(
            visible: _hasBadge,
            child: SizedBox(
              width: size ?? 24,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        color: PmgColors.statusWarning,
                        borderRadius: PmgRadius.radiusCircular,
                        border: const Border.fromBorderSide(
                            BorderSide(width: 1, color: PmgColors.monoWhite))),
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Text('$_badgeCount',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 9,
                              height: 1,
                              fontWeight: FontWeight.w700,
                              color: PmgColors.monoWhite)),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum PmgIcons {
  check,
  close,
  add,
  approved,
  arrow_down,
  arrow_left,
  arrow_up,
  arrow_right,
  attach,
  cancel,
  document,
  edit,
  expand_down,
  expand_left,
  expand_rght,
  expand_up,
  eye,
  home,
  logout,
  more_horizontal,
  new_document,
  new_item,
  notifications,
  pending,
  real_state,
  refused,
  search,
  send,
  users,
  validate
}
