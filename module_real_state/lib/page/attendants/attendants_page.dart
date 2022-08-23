import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/search/pmg_search_bar.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';
import 'package:module_real_state/model/attendants_model.dart';
import 'package:module_real_state/page/attendants/widgets/attendants_search_header.dart';

import 'widgets/attendants_search_item.dart';

class AttendantsPage extends StatelessWidget {
  const AttendantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PmgSpacing.xs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: PmgSpacing.xs),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PmgIcon(
                  PmgIcons.arrow_left,
                  size: 40,
                  color: PmgColors.neutralDark,
                  onTap: Modular.to.pop,
                ),
                const SizedBox(width: PmgSpacing.nano),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Imobiliaria Paulistana',
                        style: PmgTypography.bodySmallSemiBold(
                            color: PmgColors.neutralDark)),
                    const SizedBox(height: PmgSpacing.femto),
                    Text('Atendentes',
                        style: PmgTypography.bodyLarge(
                            color: PmgColors.neutralDark)),
                  ],
                )
              ],
            ),
            const SizedBox(height: PmgSpacing.xxxs),
            PmgSearchBar(
                controller: TextEditingController(),
                hint: 'CPF, Nome, usuário'),
            const SizedBox(height: PmgSpacing.xxxs),
            AttendantsSearchHeader(),
            ...buildAttendants()
          ],
        ),
      ),
    ));
  }

  buildAttendants() => [
        AttendantsSearchItem(
          attendant: Attendants(
              cpf: '435.464.464-95',
              name: 'Joao oao',
              email: 'jodijas@mdd@mal',
              phone: '16 654687985',
              username: 'joao@paulistana'),
        ),
        AttendantsSearchItem(
          attendant: Attendants(
              cpf: '435.464.464-95',
              name: 'Joao oao',
              email: 'jodijas@mdd@mal',
              phone: '16 654687985',
              username: 'joao@paulistana'),
        ),
        AttendantsSearchItem(
          attendant: Attendants(
              cpf: '435.464.464-95',
              name: 'Joao oao',
              email: 'jodijas@mdd@mal',
              phone: '16 654687985',
              username: 'joao@paulistana'),
        ),
        AttendantsSearchItem(
          attendant: Attendants(
              cpf: '435.464.464-95',
              name: 'Joao oao',
              email: 'jodijas@mdd@mal',
              phone: '16 654687985',
              username: 'joao@paulistana'),
        ),
      ];
}
