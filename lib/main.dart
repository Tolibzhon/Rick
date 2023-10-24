import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/core/constants/app_text_constants.dart';
import 'package:rick/routes/mobile_auto_router.dart';
import 'package:rick/server/service_locator.dart';
import 'package:rick/theme/app_colors.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = sl<AppRouter>();

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldKey,
      debugShowCheckedModeBanner: false,
      title: AppTextConstants.appTitle,
      theme: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(background: AppColors.color0B1E2DBg),
      ),

      /////Auto route settings
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(appRouter),
      routeInformationProvider: appRouter.routeInfoProvider(),
    );
  }
}
