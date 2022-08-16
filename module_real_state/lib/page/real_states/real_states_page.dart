import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/search/pmg_search_bar.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';
import 'package:module_real_state/page/real_states/widgets/real_state_item.dart';

import '../../model/real_state_model.dart';

class RealStatesPage extends StatelessWidget {
  const RealStatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: PmgSpacing.xs, top: PmgSpacing.xs, right: PmgSpacing.xs),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: PmgSpacing.xxxs),
              child: Text('Imobiliarias',
                  style:
                      PmgTypography.h3SemiBold(color: PmgColors.neutralDark)),
            ),
            PmgSearchBar(
              controller: TextEditingController(),
              onChanged: (_) {},
              hint: 'Nome, CPF, email...',
            ),
            const SizedBox(height: PmgSpacing.md),
            GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: PmgSpacing.xxs,
                    mainAxisSpacing: PmgSpacing.xxs),
                itemBuilder: (context, index) => RealStateItem(
                        realState: RealState(
                      name: 'Pottencial ',
                      cnpj: '124.321.321.321',
                      phone: '16 165469 9879',
                      mail: 'sadas@dasd.cas',
                      domain: 'asdasd',
                      attendants: []
                    ))),
            const SizedBox(height: PmgSpacing.xs)
          ],
        ),
      ),
    );
  }
}
