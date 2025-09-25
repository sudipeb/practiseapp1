import 'package:auto_route/auto_route.dart';
import 'package:demoapp/sudip_dai_page.dart';
import '../check_box_page.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig()
class Approuter extends RootStackRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: CheckBoxRoute.page, initial: true),
    AutoRoute(page: SudipDaiRoute.page,),
  ];
 
}


  