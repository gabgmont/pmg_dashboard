enum RegistrationPages { location, client, company, finals }

extension RegistrationPagesConfig on RegistrationPages {
  int get pageIdex {
    switch (this) {
      case RegistrationPages.location:
        return 0;
      case RegistrationPages.client:
        return 1;
      case RegistrationPages.company:
        return 2;
      case RegistrationPages.finals:
        return 3;
    }
  }

  RegistrationPages get nextPage {
    switch (this) {
      case RegistrationPages.location:
        return RegistrationPages.client;
      case RegistrationPages.client:
        return RegistrationPages.company;
      case RegistrationPages.company:
      case RegistrationPages.finals:
        return RegistrationPages.finals;
    }
  }

  RegistrationPages get previousPage {
    switch (this) {
      case RegistrationPages.location:
      case RegistrationPages.client:
        return RegistrationPages.location;
      case RegistrationPages.company:
        return RegistrationPages.client;
      case RegistrationPages.finals:
        return RegistrationPages.company;
    }
  }

  String get pagetitle {
    switch (this) {
      case RegistrationPages.location:
        return 'Nos diga um pouco mais sobre sua locação';
      case RegistrationPages.client:
        return 'Agora nos conte sobre você';
      case RegistrationPages.company:
        return 'Fale um pouco sobre sua empresa';
      case RegistrationPages.finals:
        return 'Pronto!';
    }
  }
}
