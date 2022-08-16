import 'package:flutter/material.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';

import 'process_item_divider.dart';
import 'process_item_text.dart';

class ProcessItemResumed extends StatelessWidget {
  final Function() onTap;
  final Process process;
  const ProcessItemResumed(
      {Key? key, required this.onTap, required this.process})
      : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 32,
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: PmgColors.primaryDark, width: 1))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PmgIcon(
                process.status.statusIcon,
                color: process.status.color,
              ),
              SizedBox(
                  width: 140,
                  child: ProcessItemText(text: 'N° ${process.number}')),
              const ProcessItemDivider(),
              SizedBox(
                  width: 200,
                  child: ProcessItemText(text: process.status.description)),
              const ProcessItemDivider(),
              SizedBox(
                  width: 200, child: ProcessItemText(text: process.principalTenantName)),
              const ProcessItemDivider(),
              SizedBox(
                  width: 120,
                  child: ProcessItemText(text: process.insuranceCompany)),
              const ProcessItemDivider(),
              SizedBox(
                  width: 200,
                  child: ProcessItemText(
                      text: 'Iniciado em: ${process.startDate}')),
              const ProcessItemDivider(),
              SizedBox(
                  width: 200,
                  child: ProcessItemText(
                      text: 'Vencimento: ${process.expirationDate}')),
            ],
          ),
        ),
      );
}
