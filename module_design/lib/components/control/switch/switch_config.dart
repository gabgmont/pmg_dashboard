import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';

enum PmgSwitchState { active, inactive, disabled }

extension PmgSwitchConfig on PmgSwitchState {
  Color get backgroundColor {
    switch (this) {
      case PmgSwitchState.active:
        return PmgColors.primary;
      case PmgSwitchState.inactive:
      case PmgSwitchState.disabled:
        return PmgColors.neutral;
    }
  }

  Color get switchColor {
    switch (this) {
      case PmgSwitchState.active:
        return PmgColors.monoBlack;
      case PmgSwitchState.inactive:
        return PmgColors.monoWhite;
      case PmgSwitchState.disabled:
        return PmgColors.neutralDark;
    }
  }
}

PmgSwitchState buildSwitchState(bool active, bool disabled) {
  if (disabled) {
    return PmgSwitchState.disabled;
  }
  if (active) {
    return PmgSwitchState.active;
  }

  return PmgSwitchState.inactive;
}
