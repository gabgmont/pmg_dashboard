import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';

const buttonTypes = [
  PmgButtonType.primary,
  PmgButtonType.secondary,
  PmgButtonType.outline,
  PmgButtonType.text
];

const buttonSizes = [
  PmgButtonSize.small,
  PmgButtonSize.medium,
  PmgButtonSize.large,
  PmgButtonSize.extraLarge
];

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _sizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [...buildButtons(), ...buildTextFields()],
        ),
      )),
    );
  }

  buildButtons() => buttonTypes.map((type) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: PmgButton(
            label: 'Button',
            rightIcon: PmgIcons.add,
            buttonType: type,
            buttonSize: buttonSizes[_sizeIndex],
            onTap: () => setState(() {
                  _sizeIndex++;
                  if (_sizeIndex > buttonSizes.length - 1) {
                    _sizeIndex = 0;
                  }
                })),
      ));

  buildTextFields() => [
        PmgTextField(
          controller: TextEditingController(),
          label: 'Nome',
          hint: 'Fulano',
        ),
        PmgTextField(
          controller: TextEditingController(),
          label: 'Nome',
          hint: 'Fulano',
          errorMessage: 'Digite o valor corretamente',
        )
      ];
}
