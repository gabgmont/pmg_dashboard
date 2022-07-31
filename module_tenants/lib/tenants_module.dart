import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';

import 'pages/tenants/tenants_page.dart';

class TenantsModule extends Module {
  static final tenantsBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => tenantsBinds;

  @override
  List<ModularRoute> get routes => [
    ChildRoute(PmgRoutes.tenantsPage, child: (context, args) => const TenantsPage())
  ];
}
