import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';

import 'pages/notifications/notifications_page.dart';

class NotificationsModule extends Module {
  static final notificationsBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => notificationsBinds;

  @override
  List<ModularRoute> get routes => [
        ChildRoute(PmgRoutes.notificationsPage,
            child: (context, args) => const NotificationsPage())
      ];
}
