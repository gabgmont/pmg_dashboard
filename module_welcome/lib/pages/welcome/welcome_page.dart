import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/assets/pmg_images.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';

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
        padding: const EdgeInsets.only(top: 19),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.88, right: 26),
                child: SizedBox(
                  width: 200,
                  child: PmgButton(
                      label: 'Acessar Painel',
                      buttonType: PmgButtonType.text,
                      buttonSize: PmgButtonSize.medium,
                      onTap: () {}),
                )),
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
                  rightIcon: PmgIcons.arrow_right,
                  buttonSize: PmgButtonSize.medium,
                  onTap: () => setState(() {
                        // re==teste
                        //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (((context) = > SearchPage()))), (route) => false)
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
