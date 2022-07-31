import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';

import 'pages/assurances/assurances_page.dart';

class AssuranceModule extends Module {
  
  static final assuranceBinds = <Bind<Object>>[
  
  ];
  
  @override
  List<Bind<Object>> get binds => assuranceBinds;

  @override
  List<ModularRoute> get routes => [
    ChildRoute(PmgRoutes.assurancesPage, child: (context, args) => const AssurancesPage())
  ];
}