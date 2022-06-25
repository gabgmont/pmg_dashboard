import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';

enum PmgSnackBarType { success, error, warning }

extension PmgSnackBarConfig on PmgSnackBarType {
  Color get backgroundColor {
    switch (this) {
      case PmgSnackBarType.success:
        return PmgColors.statusSuccess;
      case PmgSnackBarType.error:
        return PmgColors.statusError;
      case PmgSnackBarType.warning:
        return PmgColors.statusWarning;
    }
  }
}
