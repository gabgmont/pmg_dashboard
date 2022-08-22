import 'package:flutter/material.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';

class AddAttendantWidget extends StatelessWidget {
  const AddAttendantWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: (255 * 3) + 16 * 2.5,
        padding: const EdgeInsets.all(PmgSpacing.nano),
        decoration: BoxDecoration(
            border: const Border.fromBorderSide(
                BorderSide(color: PmgColors.neutral)),
            borderRadius: PmgRadius.medium),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                    width: 255,
                    child: PmgTextField(
                        label: 'Nome',
                        hint: 'Nome',
                        controller: TextEditingController())),
                SizedBox(
                    width: 255,
                    child: PmgTextField(
                        label: 'CPF',
                        hint: '999.999.999-99',
                        controller: TextEditingController())),
              ],
            ),
            Column(
              children: [
                SizedBox(
                    width: 255,
                    child: PmgTextField(
                        label: 'Usuario',
                        hint: 'fulano@paulistana',
                        controller: TextEditingController())),
                SizedBox(
                    width: 255,
                    child: PmgTextField(
                        label: 'Senha',
                        hint: '*****',
                        controller: TextEditingController())),
              ],
            ),
            Column(
              children: [
                SizedBox(
                    width: 255,
                    child: PmgTextField(
                        label: 'Telefone',
                        hint: '(16) 99999-9999',
                        controller: TextEditingController())),
                SizedBox(
                    width: 255,
                    child: PmgTextField(
                        label: 'E-mail',
                        hint: 'exemplo@email.com',
                        controller: TextEditingController())),
              ],
            ),
          ],
        ),
      );
}
