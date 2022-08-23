import 'package:flutter/cupertino.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
            left: PmgSpacing.xs, top: PmgSpacing.xs, right: PmgSpacing.xs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Notificações',
                style:
                    PmgTypography.h3SemiBold(color: PmgColors.neutralDark)),
            const SizedBox(height: PmgSpacing.xxs),
           ],
        ),
      ),
    );
  }
}
