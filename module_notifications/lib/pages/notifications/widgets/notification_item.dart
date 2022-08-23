import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: PmgColors.monoWhite,
            borderRadius: PmgRadius.medium,
            boxShadow: const [
              BoxShadow(
                  color: PmgColors.neutralLight,
                  offset: Offset(1, 2),
                  blurRadius: 1,
                  spreadRadius: 1)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                  child: Container(
                height: 84,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: PmgRadius.medium,
                  color: PmgColors.neutralLight,
                ),
              )),
              const SizedBox(width: PmgSpacing.nano),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Imobiliaria Paulista',
                    style:
                        PmgTypography.bodySmall(color: PmgColors.neutralDark),
                  ),
                  Text(
                    'Jose da silva',
                    style:
                        PmgTypography.bodySmall(color: PmgColors.neutralDark),
                  ),
                  Text(
                    'N° 9999999',
                    style:
                        PmgTypography.bodySmall(color: PmgColors.neutralDark),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: PmgSpacing.xxxs),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Anexou documentos assinados',
                      style:
                          PmgTypography.bodySmall(color: PmgColors.neutralDark),
                    ),
                  ),
                ),
              ),
              Text(
                '28/05/22 18:00',
                style: PmgTypography.bodyTiny(color: PmgColors.neutralDark),
              )
            ],
          ),
        ));
  }
}
