import 'package:flutter/cupertino.dart';

import 'main_page_config.dart';

class MainPageController {
  final controller = PageController();
  MainPages currentPage = MainPages.home;

  navigateTo(MainPages page) {
    currentPage = page;
    controller.jumpToPage(page.pageIndex);
  }
}
