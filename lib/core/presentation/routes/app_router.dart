import 'package:auto_route/auto_route.dart';
import 'package:fintech/features/top_up/presentation/pages/top_up_page.dart';
import 'package:fintech/features/beneficiaries/presentation/pages/beneficiaries_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: TopUpRoute.page, initial: true),
        AutoRoute(page: BeneficiariesRoute.page),
      ];
}
