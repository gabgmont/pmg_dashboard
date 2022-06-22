import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_commons/core/pmg_navigator_key.dart';
import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';

class PmgMainApp extends StatefulWidget {
  const PmgMainApp({Key? key}) : super(key: key);

  @override
  State<PmgMainApp> createState() => _PmgMainAppState();
}

class _PmgMainAppState extends State<PmgMainApp> {
  @override
  Widget build(BuildContext context) {
    Modular
      .setInitialRoute(PmgRoutes.welcome);

    final _navKey = Modular.get<PmgNavigatorKey>();
    Modular.setNavigatorKey(_navKey.navigationKey);

    return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: Modular.routeInformationParser,
            routerDelegate: Modular.routerDelegate);
  }
}