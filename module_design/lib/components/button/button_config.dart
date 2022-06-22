import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_typography.dart';


import '../../assets/pmg_icons.dart';
import '../../styles/pmg_spacing.dart';
import 'button_content.dart';

enum PmgButtonSize { small, medium, large, extraLarge }

enum PmgButtonType { primary, secondary, outline, text }

enum PmgButtonContentType { text, leading, trailing, icon }

TextStyle setButtonTextStyle(PmgButtonSize size) {
  switch (size) {
    case PmgButtonSize.small:
      return PmgTypography.bodySmall();

    case PmgButtonSize.medium:
      return PmgTypography.bodyMedium();

    case PmgButtonSize.large:
    case PmgButtonSize.extraLarge:
      return PmgTypography.bodyLarge();
  }
}

double setIconSize(PmgButtonSize size) {
  switch (size) {
    case PmgButtonSize.small:
      return 16.0;
    case PmgButtonSize.medium:
      return 22.0;
    case PmgButtonSize.large:
    case PmgButtonSize.extraLarge:
      return 24.0;
  }
}

double setButtonSize(PmgButtonSize size) {
  switch (size) {
    case PmgButtonSize.small:
      return 28.0;
    case PmgButtonSize.medium:
      return 38.0;
    case PmgButtonSize.large:
      return 48.0;
    case PmgButtonSize.extraLarge:
      return 56.0;
  }
}

EdgeInsets setButtonPadding(PmgButtonSize size, PmgButtonContentType type) {
  if (type == PmgButtonContentType.icon) {
    return const EdgeInsets.all(PmgSpacing.spacingNano);
  }

  switch (size) {
    case PmgButtonSize.small:
      return const EdgeInsets.symmetric(horizontal: PmgSpacing.spacingNano);
    case PmgButtonSize.medium:
      return const EdgeInsets.symmetric(horizontal: PmgSpacing.spacingXXXS);
    case PmgButtonSize.large:
      return const EdgeInsets.symmetric(horizontal: PmgSpacing.spacingXXS);
    case PmgButtonSize.extraLarge:
      return const EdgeInsets.symmetric(horizontal: PmgSpacing.spacingXXS);
  }
}

PmgButtonContent setButtonContentType(PmgButtonContentType type, String label,
    PmgButtonSize size, PmgIcons icon, bool enable) {
  switch (type) {
    case PmgButtonContentType.text:
      return PmgButtonContent.text(
        label,
        size: size,
      );
    case PmgButtonContentType.leading:
      return PmgButtonContent.leading(
        label,
        size: size,
      );
    case PmgButtonContentType.trailing:
      return PmgButtonContent.trailing(
        label,
        size: size,
      );
    case PmgButtonContentType.icon:
      return PmgButtonContent.icon(
        icon: icon,
        size: size,
        enable: enable,
      );
  }
}
