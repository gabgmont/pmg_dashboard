import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_typography.dart';

enum PmgButtonType { primary, secondary, outline, text }

enum PmgButtonSize { small, medium, large, extraLarge }

extension PmgButtonSizeConfig on PmgButtonSize {
  double get height {
    switch (this) {
      case PmgButtonSize.small:
        return 32;
      case PmgButtonSize.medium:
        return 40;
      case PmgButtonSize.large:
        return 48;
      case PmgButtonSize.extraLarge:
        return 56;
    }
  }

  double get contentSize {
    switch (this) {
      case PmgButtonSize.small:
      case PmgButtonSize.medium:
        return 24;
      case PmgButtonSize.large:
      case PmgButtonSize.extraLarge:
        return 32;
    }
  }

  TextStyle typography(Color? color) {
    switch (this) {
      case PmgButtonSize.small:
      case PmgButtonSize.medium:
        return PmgTypography.bodyTiny(color: color);
      case PmgButtonSize.large:
      case PmgButtonSize.extraLarge:
        return PmgTypography.bodyMedium(color: color);
    }
  }
}

extension PmgButtonColorConfig on PmgButtonType {
  Color get backgroundColor {
    switch (this) {
      case PmgButtonType.primary:
        return PmgColors.primary;
      case PmgButtonType.secondary:
        return PmgColors.secondary;
      case PmgButtonType.outline:
        return Colors.transparent;
      case PmgButtonType.text:
        return Colors.transparent;
    }
  }

  Color get outlineColor {
    switch (this) {
      case PmgButtonType.outline:
        return PmgColors.primary;
      case PmgButtonType.primary:
      case PmgButtonType.secondary:
      case PmgButtonType.text:
        return Colors.transparent;
    }
  }

  Color get hoverBackgroundColor {
    switch (this) {
      case PmgButtonType.primary:
        return PmgColors.primaryDark;
      case PmgButtonType.secondary:
        return PmgColors.secondaryDark;
      case PmgButtonType.outline:
        return Colors.transparent;
      case PmgButtonType.text:
        return PmgColors.primaryLight;
    }
  }

  Color get hoverOutlineColor {
    switch (this) {
      case PmgButtonType.outline:
        return PmgColors.secondaryLight;
      case PmgButtonType.primary:
      case PmgButtonType.secondary:
      case PmgButtonType.text:
        return Colors.transparent;
    }
  }

  Color get highlightColor {
    switch (this) {
      case PmgButtonType.primary:
        return PmgColors.secondaryLight;
      case PmgButtonType.secondary:
        return PmgColors.primaryLight;
      case PmgButtonType.outline:
        return Colors.transparent;
      case PmgButtonType.text:
        return PmgColors.secondaryLight;
    }
  }

  Color get highlightOutlineColor {
    switch (this) {
      case PmgButtonType.outline:
        return PmgColors.primaryDark;
      case PmgButtonType.primary:
      case PmgButtonType.secondary:
      case PmgButtonType.text:
        return Colors.transparent;
    }
  }

  Color get disabledBackgroundColor {
    switch (this) {
      case PmgButtonType.primary:
        return PmgColors.primary.withOpacity(.5);
      case PmgButtonType.secondary:
        return PmgColors.secondary.withOpacity(.5);
      case PmgButtonType.outline:
        return Colors.transparent;
      case PmgButtonType.text:
        return PmgColors.neutralLight;
    }
  }

  Color get disabledOutlineColor {
    switch (this) {
      case PmgButtonType.outline:
        return PmgColors.neutral;
      case PmgButtonType.primary:
      case PmgButtonType.secondary:
      case PmgButtonType.text:
        return Colors.transparent;
    }
  }

  Color get contentColor {
    switch (this) {
      case PmgButtonType.primary:
      case PmgButtonType.secondary:
        return PmgColors.monoWhite;
      case PmgButtonType.outline:
      case PmgButtonType.text:
        return PmgColors.monoBlack;
    }
  }

  Color get disabledContentColor {
    switch (this) {
      case PmgButtonType.primary:
      case PmgButtonType.secondary:
        return PmgColors.monoWhite;
      case PmgButtonType.outline:
      case PmgButtonType.text:
        return PmgColors.neutralDark;
    }
  }
}
