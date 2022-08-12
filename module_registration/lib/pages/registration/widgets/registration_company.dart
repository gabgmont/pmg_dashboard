import 'package:flutter/material.dart';
import 'package:module_design/components/control/check_box/pmg_check_box.dart';
import 'package:module_design/components/control/radio/pmg_radio.dart';
import 'package:module_design/components/control/switch/pmg_switch.dart';
import 'package:module_design/components/drop_down/pmg_drop_down.dart';
import 'package:module_design/components/drop_down/pmg_drop_down_item.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';

class RegistrationCompany extends StatefulWidget {
  const RegistrationCompany({Key? key}) : super(key: key);

  @override
  State<RegistrationCompany> createState() => _RegistrationCompanyState();
}

class _RegistrationCompanyState extends State<RegistrationCompany> {
  @override
  Widget build(BuildContext context) {
    int? dropDownValue;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 64),
        child: SizedBox(
          // tamanho
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.60,
          // formulario
          child: Center(
            child: Row(
              children: [
                // formulario 1
                SizedBox(
                  width: 250,
                  child: Column(
                    children: [
                      Text(
                        'Empresa',
                        style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: PmgColors.neutralDark),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PmgTextField(
                        controller: TextEditingController(),
                        label: 'Razão Social',
                        hint: 'Razão Social',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PmgTextField(
                        controller: TextEditingController(),
                        label: 'Data da Criação',
                        hint: '01/01/2022',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PmgTextField(
                        controller: TextEditingController(),
                        label: 'Email',
                        hint: 'exemplo@email.com',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PmgDropDown(
                        dropDownValue: dropDownValue,
                        clearOption: true,
                        itens: [
                          PmgDropDownItem(
                              value: 1,
                              content: const Text('Abertura de Filial')),
                          PmgDropDownItem(value: 2, content: const Text('1'))
                        ],
                        onItemSelected: (value) =>
                            setState(() => dropDownValue = value),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                // formulario 2
                SizedBox(
                  width: 250,
                  child: Column(
                    children: [
                      Text(
                        'Capital',
                        style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: PmgColors.neutralDark),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      PmgTextField(
                        controller: TextEditingController(),
                        label: 'Capital Social',
                        hint: 'R 0',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PmgTextField(
                        controller: TextEditingController(),
                        label: 'Faturamento Mensal',
                        hint: '00',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PmgTextField(
                        controller: TextEditingController(),
                        label: 'Patrimônio Liquido',
                        hint: '00',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PmgDropDown(
                        dropDownValue: dropDownValue,
                        clearOption: true,
                        itens: [
                          PmgDropDownItem(
                              value: 1,
                              content: const Text('Abertura de Filial')),
                          PmgDropDownItem(value: 2, content: const Text('1'))
                        ],
                        onItemSelected: (value) =>
                            setState(() => dropDownValue = value),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
