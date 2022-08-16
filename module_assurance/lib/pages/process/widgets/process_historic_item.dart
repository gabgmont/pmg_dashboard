import 'package:flutter/material.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import '../../../model/process_historic.dart';

class ProcessHistoricItem extends StatelessWidget {
  final ProcessHistoric historic;
  const ProcessHistoricItem({Key? key, required this.historic})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: PmgSpacing.micro),
    child: Row(
          children: [
            Container(
              height: 14,
              width: 14,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: PmgColors.neutralLight,
                  border: Border.fromBorderSide(
                      BorderSide(color: PmgColors.neutralDark, width: 2))),
            ),
            const SizedBox(width: PmgSpacing.pico),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  historic.event,
                  style: PmgTypography.bodySmall(),
                ),
                const SizedBox(height: PmgSpacing.femto),
                Visibility(
                  visible: historic.description != null,
                  child: Text(
                    historic.description ?? '',
                    style: PmgTypography.bodyTiny(),
                  ),
                ),
                const SizedBox(height: PmgSpacing.femto),
                Text(
                  historic.date,
                  style: PmgTypography.bodyTinySemiBold(),
                )
              ],
            )
          ],
        ),
  );
}
