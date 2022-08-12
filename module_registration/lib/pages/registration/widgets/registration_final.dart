import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/button/pmg_button.dart';
import 'package:module_design/components/button/pmg_button_config.dart';
import 'package:module_design/styles/pmg_colors.dart';

class registrationFinal extends StatefulWidget {
  const registrationFinal({Key? key}) : super(key: key);

  @override
  State<registrationFinal> createState() => _registrationFinalState();
}

class _registrationFinalState extends State<registrationFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 46),
        child: Column(
          children: [
            SizedBox(
              height: 53,
            ),
            SizedBox(
              width: 600,
              child: Text(
                'Suas informações foram enviadas para um de nossos corretores, que dará andamento na sua solicitação! !',
                style: TextStyle(
                    fontSize: 32,
                    fontStyle: FontStyle.normal,
                    color: PmgColors.neutralDark),
              ),
            ),
            SizedBox(
              height: 96,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: PmgButton(
                onTap: () => setState(() {
                  Modular.to.pushNamed(PmgRoutes.welcome);
                }),
                label: 'Volte ao inicio',
                buttonType: PmgButtonType.outline,
                buttonSize: PmgButtonSize.extraLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
