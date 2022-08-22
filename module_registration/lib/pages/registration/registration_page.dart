import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/assets/pmg_images.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_registration/pages/registration/controller/registration_form_controller.dart';
import 'package:module_registration/pages/registration/controller/registration_page_config.dart';
import 'package:module_registration/pages/registration/widgets/registration_client.dart';
import 'package:module_registration/pages/registration/widgets/registration_company.dart';
import 'package:module_registration/pages/registration/widgets/registration_establishment.dart';
import 'package:module_registration/pages/registration/widgets/registration_final.dart';
import 'package:module_registration/pages/registration/widgets/registration_location.dart';

class RegistrainPage extends StatefulWidget {
  const RegistrainPage({Key? key}) : super(key: key);

  @override
  State<RegistrainPage> createState() => _RegistrainPageState();
}

class _RegistrainPageState extends State<RegistrainPage> {
  int? dropDownValue;
  final controller = RegistrationFormController();
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
                  Text(
                    controller.currentPage.pagetitle,
                    style: TextStyle(
                        fontSize: 48,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: PmgColors.neutralDark),
                  ),
                  Visibility(
                    visible: controller.currentPage != RegistrationPages.finals,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.20,
                          right: 26),
                      child: PmgButton(
                        onTap: () {
                          setState(() {
                            controller.nextpage();
                          });
                        },
                        buttonType: PmgButtonType.text,
                        rightIcon: PmgIcons.arrow_right,
                        buttonSize: PmgButtonSize.extraLarge,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // formulario
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: PageView(
                controller: controller.controller,
                children: [
                  RegistrationLocation(),
                  RegistrationClient(),
                  RegistrationEstablishment(),
                  RegistrationCompany(),
                  registrationFinal()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
