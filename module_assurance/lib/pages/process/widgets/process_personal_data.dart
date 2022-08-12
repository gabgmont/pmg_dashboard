import 'package:flutter/material.dart';
import 'package:module_assurance/pages/process/widgets/process_text_item.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProcessPersonalData extends StatelessWidget {
  final Process? process;
  const ProcessPersonalData({Key? key, required this.process}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProcessTextItem(
                label: 'Cliente: ',
                value: process?.principalTenantName,
              ),
              const SizedBox(height: PmgSpacing.micro),
              ProcessTextItem(
                label: 'Estipulante: ',
                value: process?.insuranceCompany,
              ),
              const SizedBox(height: PmgSpacing.micro),
              ProcessTextItem(
                label: 'Doc. Cliente: ',
                value: process?.principalTenantName,
              ),
              const SizedBox(height: PmgSpacing.micro),
              ProcessTextItem(
                label: 'Vigência: ',
                value: '${process?.startDate} à ${process?.expirationDate}',
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProcessTextItem(
                label: 'Segurado: ',
                value: process?.principalTenantName,
              ),
              const SizedBox(height: PmgSpacing.micro),
              ProcessTextItem(
                label: 'Doc. Segurado: ',
                value: process?.insuranceCompany,
              ),
              const SizedBox(height: PmgSpacing.micro),
              ProcessTextItem(
                label: 'Seguradora: ',
                value: process?.principalTenantName,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProcessTextItem(
                label: 'Endereço do imóvel',
                value: process?.principalTenantName,
              ),
              const SizedBox(height: PmgSpacing.micro),
              Text('${process?.street}, ${process?.complement}',
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark)),
              const SizedBox(height: PmgSpacing.micro),
              Text('${process?.district}',
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark)),
              const SizedBox(height: PmgSpacing.micro),
              Text('${process?.city} - ${process?.uf}',
                  style: PmgTypography.bodySmall(color: PmgColors.neutralDark)),
            ],
          ),
        ),
      ],
    );
  }
}
