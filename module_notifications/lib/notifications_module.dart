import 'package:module_commons/export_commons.dart';

class NotificationsModule extends Module {
  static final notificationsBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => notificationsBinds;

  @override
  List<ModularRoute> get routes => [];
}
