import 'package:flutter/material.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';

class StatusFilterButton extends StatelessWidget {
  final Function(ResumedProcessStatus) onTap;
  final ResumedProcessStatus status;
  final bool selected;
  const StatusFilterButton(
      {Key? key,
      required this.status,
      required this.selected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: InkWell(
          borderRadius: PmgRadius.circular,
          onTap: () => onTap(status),
          child: Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selected ? PmgColors.primaryDark : Colors.transparent,
            ),
            child: PmgIcon(
              status.icon,
              size: 36,
              color: status.color,
              onTap: () => onTap(status),
            ),
          ),
        ),
      );
}
