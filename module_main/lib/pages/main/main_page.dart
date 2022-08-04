import 'package:flutter/material.dart';
import 'package:module_assurance/pages/assurances/assurances_page.dart';
import 'package:module_main/pages/main/controller/main_page_controller.dart';
import 'package:module_main/pages/main/widgets/main_header.dart';
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
              const MainHeader(),
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
