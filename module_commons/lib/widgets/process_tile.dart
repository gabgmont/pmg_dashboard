import 'package:flutter/material.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProcessTile extends StatelessWidget {
  final Process process;
  const ProcessTile({Key? key, required this.process}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: PmgSpacing.femto),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: 170,
            padding: const EdgeInsets.all(PmgSpacing.xxxs),
            decoration: BoxDecoration(
              color: PmgColors.monoWhite,
              borderRadius: PmgRadius.medium,
              boxShadow: const [
                BoxShadow(
                    color: PmgColors.neutralLight,
                    offset: Offset(1, 2),
                    blurRadius: 1,
                    spreadRadius: 1),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('N° ${process.number}',
                          style: PmgTypography.bodySmall()),
                      const SizedBox(height: PmgSpacing.nano),
                      Text(process.principalTenantName,
                          style: PmgTypography.bodySmall()),
                      const SizedBox(height: PmgSpacing.nano),
                      Text(process.insuranceCompany,
                          style: PmgTypography.bodySmall()),
                      const Spacer(),
                      Row(
                        children: [
                          PmgIcon(
                            process.status.icon,
                            color: process.status.color,
                            size: 20,
                          ),
                          const SizedBox(width: PmgSpacing.femto),
                          Text(process.status.description,
                              style: PmgTypography.bodyTiny(
                                  color: process.status.color)),
                        ],
                      ),
                      const SizedBox(height: PmgSpacing.nano),
                      Text('Iniciado em: ${process.startDate}',
                          style: PmgTypography.bodySmall()),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: PmgSpacing.nano),
                  child: VerticalDivider(),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Endereço do imóvel',
                          style: PmgTypography.bodySmallSemiBold()),
                      const SizedBox(height: PmgSpacing.nano),
                      Text('${process.street}, ${process.complement}',
                          style: PmgTypography.bodySmall()),
                      const SizedBox(height: PmgSpacing.nano),
                      Text(process.district, style: PmgTypography.bodySmall()),
                      const SizedBox(height: PmgSpacing.nano),
                      Text('${process.city} - ${process.uf}',
                          style: PmgTypography.bodySmall()),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: PmgSpacing.nano),
                  child: VerticalDivider(),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Inquilino/Garantido/Locatário',
                        style: PmgTypography.bodySmallSemiBold()),
                    const SizedBox(height: PmgSpacing.nano),
                    ...buildTenants()
                  ],
                ))
              ],
            ),
          ),
        ),
      );

  buildTenants() => process.tenants
      .map((e) => Padding(
            padding: const EdgeInsets.only(bottom: PmgSpacing.nano),
            child: Text(e, style: PmgTypography.bodySmall()),
          ))
      .toList();
}
