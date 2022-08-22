import 'package:module_commons/core/pmg_routes.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_search/pages/search/search_page.dart';

class SearchModule extends Module {
  static final searchBinds = <Bind<Object>>[];

  @override
  List<Bind<Object>> get binds => searchBinds;

  @override
  List<ModularRoute> get routes => [
        ChildRoute(PmgRoutes.search,
            child: (context, args) => const SearchPage())
      ];
}