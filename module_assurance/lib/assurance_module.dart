import 'package:module_assurance/client/process_client.dart';
import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';

import 'pages/assurances/assurances_page.dart';
import 'pages/assurances/bloc/assurance_cubit.dart';
import 'pages/process/process_page.dart';

class AssuranceModule extends Module {
  static final assuranceBinds = <Bind<Object>>[
    Bind.lazySingleton((i) => AssuranceCubit()),
    Bind.lazySingleton((i) => IProcessClient())
  ];

  @override
  List<Bind<Object>> get binds => assuranceBinds;

  @override
  List<ModularRoute> get routes => [
        ChildRoute(PmgRoutes.assurancesPage,
            child: (context, args) => const AssurancesPage()),
        ChildRoute(PmgRoutes.process,
            child: (context, args) => ProcessPage(process: args.data))
      ];
}
