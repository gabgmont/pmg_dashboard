import 'package:module_commons/export_commons.dart';

class WelcomeModule extends Module {
  static final welcomeBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => welcomeBinds;

  @override
  List<ModularRoute> get routes => [];
}
