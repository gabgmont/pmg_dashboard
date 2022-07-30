import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/assets/pmg_images.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/components/control/check_box/pmg_check_box.dart';
import 'package:module_design/components/control/radio/pmg_radio.dart';
import 'package:module_design/components/control/switch/pmg_switch.dart';
import 'package:module_design/components/drop_down/pmg_drop_down.dart';
import 'package:module_design/components/drop_down/pmg_drop_down_item.dart';
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
  int? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 78),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(1300, 19, 16, 26),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    primary: Color.fromRGBO(0, 75, 118, 1)),
                child: Text('Acessar Painel', style: TextStyle(fontSize: 16)),
              ),
            ),
            const Center(
              child: PmgImage(image: PmgImages.pmg_logo),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 50,
            ),
            Column(
              children: const [
                Text(
                  'Está na hora de contratar seu seguro!',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                Text(
                  'Nos envie um pedido e cuidaremos disso pra você!',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ],
            ),
            SizedBox(height: 79),
            SizedBox(
              width: 200,
              child: PmgButton(
                  label: 'Contratar',
                  buttonType: PmgButtonType.primary,
                  rightIcon: PmgIcons.expand_rght,
                  buttonSize: PmgButtonSize.medium,
                  onTap: () => setState(() {
                        if (_sizeIndex > buttonSizes.length - 1) {
                          _sizeIndex = 0;
                        }
                      })),
            ),

            // ElevatedButton.icon(
            //   onPressed: () {},
            //   label: Text('Contratar'),
            //   icon: Icon(Icons.arrow_right),
            //   style: ElevatedButton.styleFrom(
            //       primary: Color.fromRGBO(117, 165, 215, 1),
            //       fixedSize: Size(200, 56),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(6))),
            // )
          ],
        ),
      ),
    );
  }

  buildButtons() => buttonTypes.map((type) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: PmgButton(
            label: 'Contratar',
            rightIcon: PmgIcons.arrow_right,
            buttonType: type,
            buttonSize: buttonSizes[_sizeIndex],
            onTap: () => setState(() {
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

  buildDropDown() => [
        PmgDropDown(
          dropDownValue: dropDownValue,
          clearOption: true,
          itens: [
            PmgDropDownItem(value: 1, content: const Text('Opcao 1')),
            PmgDropDownItem(value: 2, content: const Text('Opcao 2'))
          ],
          onItemSelected: (value) => setState(() => dropDownValue = value),
        )
      ];

  buildCheckBox() => Row(
        children: [
          PmgCheckBox(onChange: (_) {}),
          PmgCheckBox(selected: true, onChange: (_) {}),
          PmgCheckBox(active: false, onChange: (_) {}),
          PmgCheckBox(active: false, selected: true, onChange: (_) {}),
          PmgCheckBox(hasError: true, onChange: (_) {})
        ],
      );
  buildRadio() => Row(
        children: [
          PmgRadio(onTap: () {}),
          PmgRadio(selected: true, onTap: () {}),
          PmgRadio(active: false, onTap: () {}),
          PmgRadio(active: false, selected: true, onTap: () {}),
          PmgRadio(hasError: true, onTap: () {})
        ],
      );

  buildSwitch() => Row(
        children: [
          PmgSwitch(onSwitch: (_) {}, value: true),
          const SizedBox(width: 8),
          PmgSwitch(onSwitch: (_) {}, value: false),
          const SizedBox(width: 8),
          PmgSwitch(onSwitch: (_) {}, value: false, disabled: true),
          const SizedBox(width: 8),
          PmgSwitch(onSwitch: (_) {}, value: true, disabled: true),
        ],
      );
}
