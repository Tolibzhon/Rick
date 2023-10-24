import 'package:auto_route/auto_route.dart';
import 'package:rick/routes/mobile_auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: BottomNavigatorRoute.page),
        AutoRoute(page: CharacterFiltersRoute.page),
        AutoRoute(page: PersonDetaileRoute.page),
        AutoRoute(page: LocationDetaileRoute.page),
        AutoRoute(page: LocationFiltersRoute.page),
        AutoRoute(page: EpisodesDetaileRoute.page),
      ];
}
