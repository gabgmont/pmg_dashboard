import 'package:module_commons/export_commons.dart';

class SearchModule extends Module {
  static final searchBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => searchBinds;

  @override
  List<ModularRoute> get routes => [];
}
