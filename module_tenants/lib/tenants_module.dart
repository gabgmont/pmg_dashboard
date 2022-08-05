import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_tenants/clients/tenants_search_client.dart';
import 'package:module_tenants/pages/tenants/bloc/tenants_cubit.dart';

import 'pages/tenants/tenants_page.dart';

class TenantsModule extends Module {
  static final tenantsBinds = <Bind<Object>>[
    Bind.lazySingleton((i) => TenantsCubit()),
    Bind.lazySingleton((i) => ITenantsSearchClient())
  ];

  @override
  List<Bind<Object>> get binds => tenantsBinds;

  @override
  List<ModularRoute> get routes => [
    ChildRoute(PmgRoutes.tenantsPage, child: (context, args) => const TenantsPage())
  ];
}
