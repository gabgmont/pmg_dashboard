import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';

enum PmgCheckBoxState { unselected, selected, disabled, readOnly, error }

extension PmgCheckBoxConfig on PmgCheckBoxState {
  Color get checkBoxColor {
    switch (this) {
      case PmgCheckBoxState.unselected:
        return Colors.transparent;
      case PmgCheckBoxState.selected:
        return PmgColors.primary;
      case PmgCheckBoxState.disabled:
        return PmgColors.neutralLight;
      case PmgCheckBoxState.readOnly:
        return PmgColors.neutralLight;
      case PmgCheckBoxState.error:
        return Colors.transparent;
    }
  }

  Color get checkBoxOutlineColor {
    switch (this) {
      case PmgCheckBoxState.unselected:
        return PmgColors.primary;
      case PmgCheckBoxState.selected:
      case PmgCheckBoxState.readOnly:
        return Colors.transparent;
      case PmgCheckBoxState.disabled:
        return PmgColors.neutralDark;
      case PmgCheckBoxState.error:
        return PmgColors.statusError;
    }
  }
}

PmgCheckBoxState buildCheckBoxState(
    bool isActive, bool isSelected, bool hasError) {
  if (hasError && !isSelected && isActive) {
    return PmgCheckBoxState.error;
  }

  if (isSelected && isActive) {
    return PmgCheckBoxState.selected;
  }

  if (isSelected && !isActive) {
    return PmgCheckBoxState.readOnly;
  }

  if (!isSelected && !isActive) {
    return PmgCheckBoxState.disabled;
  }

  return PmgCheckBoxState.unselected;
}

Color setCheckColor(bool isActive) =>
    isActive ? PmgColors.monoBlack : PmgColors.neutralDark;
