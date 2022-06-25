import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';

enum PmgRadioState { unselected, selected, disabled, readOnly, error }

extension PmgRadioConfig on PmgRadioState {
  Color get radioColor {
    switch (this) {
      case PmgRadioState.unselected:
        return PmgColors.monoWhite;
      case PmgRadioState.disabled:
        return PmgColors.neutral;
      case PmgRadioState.selected:
        return PmgColors.monoBlack;
      case PmgRadioState.readOnly:
        return PmgColors.neutralDark;
      case PmgRadioState.error:
        return PmgColors.monoWhite;
    }
  }

  Color get radioOutlineColor {
    switch (this) {
      case PmgRadioState.unselected:
      case PmgRadioState.selected:
        return PmgColors.primary;
      case PmgRadioState.disabled:
        return PmgColors.neutral;
      case PmgRadioState.readOnly:
        return PmgColors.neutralDark;
      case PmgRadioState.error:
        return PmgColors.statusError;
    }
  }

  double get borderWidth {
    switch (this) {
      case PmgRadioState.selected:
      case PmgRadioState.readOnly:
        return 5;
      default:
        return 2;
    }
  }
}

PmgRadioState buildRadioState(bool isActive, bool isSelected, bool hasError) {
  if (hasError && !isSelected && isActive) {
    return PmgRadioState.error;
  }

  if (isSelected && isActive) {
    return PmgRadioState.selected;
  }

  if (isSelected && !isActive) {
    return PmgRadioState.readOnly;
  }

  if (!isSelected && !isActive) {
    return PmgRadioState.disabled;
  }

  return PmgRadioState.unselected;
}