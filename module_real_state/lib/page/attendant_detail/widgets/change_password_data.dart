import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ChangePasswordData extends StatelessWidget {
  const ChangePasswordData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: 32,
            child: Text('Redefinir senha',
                style: PmgTypography.bodyMediumSemiBold(
                    color: PmgColors.neutralDark))),
        const SizedBox(height: PmgSpacing.femto),
        SizedBox(
          width: 250,
          child: PmgTextField(
            label: 'Senha',
            controller: TextEditingController(),
          ),
        ),
        const SizedBox(height: PmgSpacing.femto),
        SizedBox(
          width: 250,
          child: PmgTextField(
            label: 'Confirmar senha',
            controller: TextEditingController(),
          ),
        )
      ],
    );
  }
}
