import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';

import 'pages/main/main_page.dart';

class MainModule extends Module {
  static final mainBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => mainBinds;

  @override
  List<ModularRoute> get routes => [
    ChildRoute(PmgRoutes.mainPage, child: (context, args) => const MainPage())
  ];
}
