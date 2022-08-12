import 'package:flutter/material.dart';
import 'package:module_design/components/control/radio/pmg_radio.dart';
import 'package:module_design/components/control/switch/pmg_switch.dart';
import 'package:module_design/components/drop_down/pmg_drop_down.dart';
import 'package:module_design/components/drop_down/pmg_drop_down_item.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';

class RegistrationClient extends StatefulWidget {
  const RegistrationClient({Key? key}) : super(key: key);

  @override
  State<RegistrationClient> createState() => _RegistrationClientState();
}

class _RegistrationClientState extends State<RegistrationClient> {
  @override
  Widget build(BuildContext context) {
    int? dropDownValue;
    return Padding(
      padding: const EdgeInsets.only(top: 64),
      child: SizedBox(
        // tamanho
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.60,
        // formulario
        child: Row(
          children: [
            // formulario 1
            SizedBox(
              width: 280,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Dados Pessoais',
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
                      label: 'Nome',
                      hint: 'Fulano',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'CPF',
                      hint: '000.000.000-00',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Data de nascimento',
                      hint: '01/01/2000',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        PmgRadio(active: true, selected: true, onTap: () {}),
                        Text('Masculino'),
                        PmgRadio(active: false, selected: true, onTap: () {}),
                        Text('Feminino'),
                        PmgRadio(active: false, selected: true, onTap: () {}),
                        Text('Outros'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgDropDown(
                      dropDownValue: dropDownValue,
                      clearOption: true,
                      itens: [
                        PmgDropDownItem(
                            value: 1, content: const Text('Solteiro')),
                        PmgDropDownItem(value: 2, content: const Text('Casado'))
                      ],
                      onItemSelected: (value) =>
                          setState(() => dropDownValue = value),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Celular',
                      hint: '(16) 99999-9999',
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
                    Text(
                      'Conjuge',
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
                      label: 'Nome',
                      hint: 'Fulano',
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'CPF',
                      hint: '000.000.000-00',
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Data de nascimento',
                      hint: '01/01/2000',
                    ),
                  ],
                ),
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
                    'Residencia Atual',
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
                    label: 'CEP',
                    hint: '99999-999',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PmgTextField(
                    controller: TextEditingController(),
                    label: 'numero',
                    hint: '00',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PmgTextField(
                    controller: TextEditingController(),
                    label: 'Complemento',
                    hint: 'Sem complemento',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            // formulario 3
            SizedBox(
              width: 250,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Renda',
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
                      label: 'Veiculo',
                      hint: 'Tipo de Locação',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Renda mensal',
                      hint: ' 3000,00',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Outras Rendas',
                      hint: 'Tipo de Locação',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Outras Rendas',
                      hint: 'Tipo de Locação',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Profissão',
                      hint: 'Empregado',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Empresa',
                      hint: 'Empresa',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Telefone Empresa',
                      hint: '(16) 98898-9889',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Data admissão',
                      hint: '01/01/2000',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
