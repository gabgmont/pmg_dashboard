import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class ProcessStatusRow extends StatelessWidget {
  const ProcessStatusRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Andamento', style: PmgTypography.bodySmallSemiBold()),
          const SizedBox(height: PmgSpacing.xs),
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: Container(
                    height: 10,
                    width: double.infinity,
                    color: PmgColors.neutralLight,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _buildStatus(),
              )
            ],
          )
        ],
      );
      
  _buildStatus() {
    var status = <Widget>[];
    for (int i = 0; i < 12; i++) {
      status.add(Column(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                color: PmgColors.neutralLight, shape: BoxShape.circle),
          ),
          const SizedBox(height: PmgSpacing.xxxs),
          Text('Status xyz', style: PmgTypography.bodyTiny(color: PmgColors.neutralDark))
        ],
      ));
    }
    return status;
  }
}
