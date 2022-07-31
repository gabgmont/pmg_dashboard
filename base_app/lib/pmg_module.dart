import 'package:module_assurance/assurance_module.dart';
import 'package:module_commons/commons_module.dart';
import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_notifications/notifications_module.dart';
import 'package:module_provider/provider_module.dart';
import 'package:module_registration/registration_module.dart';
import 'package:module_tenants/tenants_module.dart';
import 'package:module_welcome/welcome_module.dart';

class PmgModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        ...CommonsModule.commonsBinds,
        ...ProviderModule.providerBinds,
        ...AssuranceModule.assuranceBinds,
        ...NotificationsModule.notificationsBinds,
        ...RegistrationModule.registrationBinds,
        ...TenantsModule.tenantsBinds,
        ...WelcomeModule.welcomeBinds
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(PmgRoutes.root, module: AssuranceModule()),
        ModuleRoute(PmgRoutes.root, module: NotificationsModule()),
        ModuleRoute(PmgRoutes.root, module: RegistrationModule()),
        ModuleRoute(PmgRoutes.root, module: TenantsModule()),
        ModuleRoute(PmgRoutes.root, module: WelcomeModule()),
      ];
}
