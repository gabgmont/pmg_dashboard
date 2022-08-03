import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_commons/export_bloc.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/assets/pmg_images.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/components/drop_down/pmg_drop_down.dart';
import 'package:module_design/components/drop_down/pmg_drop_down_item.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_registration/pages/registration/widgets/registration_location.dart';

class RegistrainPage extends StatefulWidget {
  const RegistrainPage({Key? key}) : super(key: key);

  @override
  State<RegistrainPage> createState() => _RegistrainPageState();
}

class _RegistrainPageState extends State<RegistrainPage> {
  int? dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                SizedBox(
                  width: 120,
                  child: PmgImage(image: PmgImages.pmg_logo),
                ),
                SizedBox(
                  width: 15.77,
                ),
                Text(
                  'Contrate seu seguro',
                  style: TextStyle(
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: PmgColors.neutralDark),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 68.0, left: 25),
              child: Row(
                children: [
                  const Text(
                    'Nos diga um pouco mais sobre sua locação',
                    style: TextStyle(
                        fontSize: 48,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: PmgColors.neutralDark),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.20,
                        right: 26),
                    child: PmgButton(
                      onTap: () {},
                      buttonType: PmgButtonType.text,
                      rightIcon: PmgIcons.arrow_right,
                      buttonSize: PmgButtonSize.extraLarge,
                    ),
                  )
                ],
              ),
            ),
            // formulario
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              child: PageView(
                children: [RegistrationLocation()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
