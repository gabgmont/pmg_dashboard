import 'package:flutter/cupertino.dart';

import 'main_page_config.dart';

class MainPageController {
  final controller = PageController(initialPage: 4);
  MainPages currentPage = MainPages.tenants;

  navigateTo(MainPages page) {
    currentPage = page;
    controller.jumpToPage(page.pageIndex);
  }
}
