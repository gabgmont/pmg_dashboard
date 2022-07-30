import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'pages/welcome/welcome_page.dart';

class WelcomeModule extends Module {
  static final welcomeBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => welcomeBinds;

  @override
  List<ModularRoute> get routes => [
        ChildRoute(PmgRoutes.welcome,
            child: (context, args) => const WelcomePage())
      ];
}
