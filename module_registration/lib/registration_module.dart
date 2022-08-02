import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_registration/pages/registration/registration_page.dart';

class RegistrationModule extends Module {
  static final registrationBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => registrationBinds;

  @override
  List<ModularRoute> get routes => [
        ChildRoute(PmgRoutes.registration,
            child: (context, args) => const RegistrainPage())
      ];
}
