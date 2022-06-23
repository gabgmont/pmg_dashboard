import 'package:flutter/material.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PmgButton(
          label: 'Confirmar',
          disabled: true,
          buttonType: PmgButtonType.text,
          buttonSize: PmgButtonSize.extraLarge,
          onTap: (){},
        )
      ),
    );
  }
}
