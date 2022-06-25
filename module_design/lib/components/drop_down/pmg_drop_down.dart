import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'pmg_drop_down_item.dart';

class PmgDropDown extends StatelessWidget {
  final dynamic dropDownValue;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;
  final bool clearOption;
  final List<PmgDropDownItem> itens;
  final Function(dynamic) onItemSelected;
  final VoidCallback? onTapOverlay;
  const PmgDropDown(
      {Key? key,
      this.dropDownValue,
      this.borderColor,
      this.backgroundColor,
      this.textColor,
      required this.clearOption,
      required this.itens,
      required this.onItemSelected,
      this.onTapOverlay})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 50,
          width: double.maxFinite,
          child: Container(
            decoration: BoxDecoration(
                color: backgroundColor ?? Colors.transparent,
                border: Border.fromBorderSide(BorderSide(
                    width: 1, color: borderColor ?? PmgColors.neutral)),
                borderRadius: PmgRadius.radiusMedium),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
              child: DropdownButton(
                itemHeight: 50,
                dropdownColor: backgroundColor,
                focusColor: backgroundColor,
                hint: Text(
                  'Selecione uma opção',
                  style: PmgTypography.bodyTiny(),
                ),
                value: dropDownValue,
                underline: const SizedBox(),
                isExpanded: true,
                icon: const PmgIcon(PmgIcons.expand_down),
                items: itens
                    .map((item) => DropdownMenuItem(
                        value: item.value, child: item.content))
                    .toList(),
                onChanged: (newValue) => onItemSelected(newValue),
              ),
            ),
          ),
        ),
        Visibility(
          visible: onTapOverlay != null,
          child: SizedBox(
            height: 50,
            width: double.maxFinite,
            child: InkWell(
              onTap: onTapOverlay,
            ),
          ),
        ),
      ],
    );
  }
}
