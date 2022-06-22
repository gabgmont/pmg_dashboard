import 'package:module_commons/export_commons.dart';

class CommonsModule extends Module {
  static final commonsBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => commonsBinds;

  @override
  List<ModularRoute> get routes => [];
}
