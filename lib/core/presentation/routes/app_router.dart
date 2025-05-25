import 'package:auto_route/auto_route.dart';
import 'package:fintech/core/di/injection.dart';
import 'package:fintech/features/auth/presentation/pages/auth_page.dart';
import 'package:fintech/features/top_up/presentation/pages/create_top_up_page.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true,),
        AutoRoute(page: CreateTopUpRoute.page),
      ];
}

@module
abstract class AppRouterModule {
  @singleton
  AppRouter get getAppRouter => AppRouter();
}

AppRouter getAppRouter =getIt<AppRouter>();
