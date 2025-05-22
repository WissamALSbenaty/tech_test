// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BeneficiariesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BeneficiariesPage(),
      );
    },
    TopUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TopUpPage(),
      );
    },
  };
}

/// generated route for
/// [BeneficiariesPage]
class BeneficiariesRoute extends PageRouteInfo<void> {
  const BeneficiariesRoute({List<PageRouteInfo>? children})
      : super(
          BeneficiariesRoute.name,
          initialChildren: children,
        );

  static const String name = 'BeneficiariesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TopUpPage]
class TopUpRoute extends PageRouteInfo<void> {
  const TopUpRoute({List<PageRouteInfo>? children})
      : super(
          TopUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
