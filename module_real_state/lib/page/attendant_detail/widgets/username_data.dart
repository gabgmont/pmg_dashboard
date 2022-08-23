import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class UsernameData extends StatelessWidget {
  const UsernameData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 32,
          child: Text('Usuário',
              style: PmgTypography.bodyMediumSemiBold(
                  color: PmgColors.neutralDark)),
        ),
        const SizedBox(height: PmgSpacing.femto),
        SizedBox(
          width: 250,
          child: PmgTextField(
            label: 'Usuário',
            controller: TextEditingController(),
          ),
        )
      ],
    );
  }
}
