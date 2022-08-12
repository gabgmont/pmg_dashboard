import 'package:flutter/cupertino.dart';
import 'package:module_registration/pages/registration/controller/registration_page_config.dart';

class RegistrationFormController {
  final controller = PageController();
  RegistrationPages currentPage = RegistrationPages.location;

  navigateTo(RegistrationPages page) {
    currentPage = page;
    controller.jumpToPage(page.pageIdex);
  }

  nextpage() {
    currentPage = currentPage.nextPage;
    controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  previousPage() {
    currentPage = currentPage.previousPage;
    controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
