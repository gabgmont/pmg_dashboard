import 'package:flutter/material.dart';
import 'package:module_assurance/pages/assurances/assurances_page.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';
import 'package:module_main/pages/main/controller/main_page_controller.dart';
import 'package:module_main/pages/main/widgets/main_menu.dart';
import 'package:module_notifications/pages/notifications/notifications_page.dart';
import 'package:module_real_state/page/real_states/real_states_page.dart';
import 'package:module_tenants/pages/tenants/tenants_page.dart';
import 'package:module_welcome/pages/home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = MainPageController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainMenu(
            onPageChange: (page) => pageController.navigateTo(page),
          ),
          Column(
            children: [
              Container(
                color: PmgColors.primaryLight,
                height: 100,
                width: MediaQuery.of(context).size.width - 120,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: PmgSpacing.xxxs),
                      child: Text.rich(TextSpan(
                        text: 'Bem vindo,\n',
                        style: PmgTypography.bodyLargeSemiBold(
                            color: PmgColors.monoWhite),
                        children: [
                          TextSpan(
                              text: 'Gabriel!',
                              style: PmgTypography.bodyLarge()),
                        ],
                      )),
                    ),
                    const Spacer(),
                    Text('Sair',
                        style: PmgTypography.bodyMediumSemiBold(
                            color: PmgColors.monoWhite)),
                    const SizedBox(width: PmgSpacing.nano),
                    PmgIcon(
                      PmgIcons.logout,
                      size: 40,
                      color: PmgColors.monoWhite,
                      onTap: (){},
                    ),
                    const SizedBox(width: PmgSpacing.xxxs)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width - 120,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController.controller,
                  children: const [
                    HomePage(),
                    TenantsPage(),
                    AssurancesPage(),
                    RealStatesPage(),
                    NotificationsPage()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
