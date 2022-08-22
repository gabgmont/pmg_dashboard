import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';

import 'page/register/real_state_register_page.dart';

class RealStateModule extends Module {

  static final realStateBinds = <Bind<Object>>[
  
  ];

  @override
  List<Bind<Object>> get binds => realStateBinds;

  @override
  List<ModularRoute> get routes => [
    ChildRoute(PmgRoutes.realStatesRegisterPage, child: (context, args) => const RealStateRegisterPage())
  ];

}