// Establishment

import 'package:flutter/material.dart';
import 'package:module_design/components/control/radio/pmg_radio.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';

class RegistrationEstablishment extends StatefulWidget {
  const RegistrationEstablishment({Key? key}) : super(key: key);

  @override
  State<RegistrationEstablishment> createState() =>
      _RegistrationEstablishmentState();
}

class _RegistrationEstablishmentState extends State<RegistrationEstablishment> {
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'Estabelecimento',
                          style: TextStyle(
                              fontSize: 24,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              color: PmgColors.neutralDark),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            PmgRadio(
                                active: true, selected: true, onTap: () {}),
                            Text('Esmpresa constituída'),
                          ],
                        ),
                        PmgTextField(
                          controller: TextEditingController(),
                          label: 'CNPJ',
                          hint: '99.889.989/0001-98',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PmgTextField(
                          controller: TextEditingController(),
                          label: 'Atividade econômica',
                          hint: 'Atividade',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PmgTextField(
                          controller: TextEditingController(),
                          label: 'CNAE',
                          hint: '1111-3',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PmgTextField(
                          controller: TextEditingController(),
                          label: 'Franquia',
                          hint: 'Franquia',
                        ),
                        PmgTextField(
                          controller: TextEditingController(),
                          label: 'Experiência',
                          hint: 'Experiência',
                        ),
                        Row(
                          children: [
                            Text('Produtos'),
                            PmgRadio(
                                active: true, selected: true, onTap: () {}),
                          ],
                        ),
                        PmgTextField(
                          controller: TextEditingController(),
                          label: 'Produto',
                          hint: 'Produto',
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
                        'Sócios',
                        style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: PmgColors.neutralDark),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        children: [
                          PmgRadio(active: true, selected: true, onTap: () {}),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            PmgTextField(
                              controller: TextEditingController(),
                              label: 'Nome',
                              hint: 'Fulano',
                            ),
                            PmgTextField(
                              controller: TextEditingController(),
                              label: 'CPF',
                              hint: '00',
                            ),
                          ],
                        ),
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
                        'Sobre',
                        style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: PmgColors.neutralDark),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          PmgTextField(
                            controller: TextEditingController(),
                            label: 'Onus',
                            hint: 'Onus',
                          ),
                          PmgTextField(
                            controller: TextEditingController(),
                            label: 'Investimentos',
                            hint: 'Investimentos',
                          ),
                        ],
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
