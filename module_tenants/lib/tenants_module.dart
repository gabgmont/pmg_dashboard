import 'package:module_commons/export_commons.dart';

class TenantsModule extends Module {
  static final tenantsBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => tenantsBinds;

  @override
  List<ModularRoute> get routes => [];
}
