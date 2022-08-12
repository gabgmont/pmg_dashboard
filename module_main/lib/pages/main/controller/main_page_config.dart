enum MainPages { home, tenants, document, realState, notifications }

extension MainPagesConfig on MainPages {
  int get pageIndex {
    switch (this) {
      case MainPages.home:
        return 0;
      case MainPages.tenants:
        return 1;
      case MainPages.document:
        return 2;
      case MainPages.realState:
        return 3;
      case MainPages.notifications:
        return 4;
    }
  }
}
