import 'package:module_commons/core/pmg_navigator_key.dart';
import 'package:module_commons/export_commons.dart';

class CommonsModule extends Module {
  static final commonsBinds = <Bind<Object>>[
    Bind.singleton((i) => PmgNavigatorKey())
  ];

  @override
  List<Bind<Object>> get binds => commonsBinds;

  @override
  List<ModularRoute> get routes => [];
}
