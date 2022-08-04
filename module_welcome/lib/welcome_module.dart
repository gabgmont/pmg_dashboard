import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_commons/models/entity/session.dart';
import 'package:module_commons/models/entity/user.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_welcome/clients/resumed_process_client.dart';
import 'package:module_welcome/pages/home/bloc/home_cubit.dart';

import 'pages/home/home_page.dart';
import 'pages/welcome/welcome_page.dart';

class WelcomeModule extends Module {
  static final welcomeBinds = <Bind<Object>>[
    Bind.singleton((i) => PmgSession(User(
          id: 1,
          name: 'Gabriel',
          mail: 'gabriel@pmg.com',
          phone: '16991769630',
          profiles: ['PMG'],
          exhibitionStatus: [
            ProcessStatus.validatingForm,
            ProcessStatus.sendToAnalysys,
            ProcessStatus.analyzing,
            ProcessStatus.approved,
            ProcessStatus.emittingProposal,
            ProcessStatus.signedDocuments,
            ProcessStatus.sendToInsuranceCompany,
            ProcessStatus.emittingPolicy,
            ProcessStatus.policyEmmited,
            ProcessStatus.concluded,
            ProcessStatus.refused,
            ProcessStatus.canceled,
            ProcessStatus.unknown
          ],
          actionStatus: [],
        ))),
    Bind.lazySingleton((i) => HomeCubit()),
    Bind.lazySingleton((i) => IResumedProcessClient()),
  ];

  @override
  List<Bind<Object>> get binds => welcomeBinds;

  @override
  List<ModularRoute> get routes => [
        ChildRoute(PmgRoutes.welcome,
            child: (context, args) => const WelcomePage()),
        ChildRoute(PmgRoutes.homePage,
            child: (context, args) => const HomePage())
      ];
}
