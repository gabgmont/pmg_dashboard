import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/components/control/radio/pmg_radio.dart';
import 'package:module_design/components/control/switch/pmg_switch.dart';
import 'package:module_design/components/drop_down/pmg_drop_down.dart';
import 'package:module_design/components/drop_down/pmg_drop_down_item.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';

class RegistrationLocation extends StatefulWidget {
  const RegistrationLocation({Key? key}) : super(key: key);

  @override
  State<RegistrationLocation> createState() => _RegistrationLocationState();
}

class _RegistrationLocationState extends State<RegistrationLocation> {
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
              width: 250,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Dados do imovel',
                      style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: PmgColors.neutralDark),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgDropDown(
                      dropDownValue: dropDownValue,
                      clearOption: true,
                      itens: [
                        PmgDropDownItem(
                            value: 1, content: const Text('Opcao 1')),
                        PmgDropDownItem(
                            value: 2, content: const Text('Opcao 2'))
                      ],
                      onItemSelected: (value) =>
                          setState(() => dropDownValue = value),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Cep',
                      hint: 'Tipo de Locação',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Bairro',
                      hint: 'Sem complemento',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'rua',
                      hint: '00',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Numero',
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
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Cidade',
                      hint: 'Sem complemento',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PmgTextField(
                      controller: TextEditingController(),
                      label: 'Estado',
                      hint: 'Sem complemento',
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
                    'Dados da imobiliária',
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
                    label: 'Tipo de locação',
                    hint: 'Tipo de locação',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PmgTextField(
                    controller: TextEditingController(),
                    label: 'Imobiliaria',
                    hint: 'Imobiliaria',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PmgTextField(
                    controller: TextEditingController(),
                    label: 'Atendente',
                    hint: 'Atendente',
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
              child: Column(
                children: [
                  Text(
                    'Gastos do imóvel',
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
                    label: 'Valor do Aluguel',
                    hint: 'Tipo de Locação',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PmgTextField(
                    controller: TextEditingController(),
                    label: 'Valor do Comdominio',
                    hint: 'Tipo de Locação',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PmgTextField(
                    controller: TextEditingController(),
                    label: 'Valor do IPTU',
                    hint: 'Tipo de Locação',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            //formulario 4
            SizedBox(
              width: 250,
              child: Column(
                children: [
                  Text(
                    'Sobre a locação',
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
                    label: 'Motivo Locação',
                    hint: 'Abertura de filial',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      PmgRadio(active: true, selected: true, onTap: () {}),
                      Text('Pessoa Fisica'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      PmgRadio(active: false, selected: true, onTap: () {}),
                      Text('Pessoa Juridica'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
