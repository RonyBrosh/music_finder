// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'discovery_router.dart';

class _$DiscoveryRouter extends RootStackRouter {
  _$DiscoveryRouter([GlobalKey<NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    DiscoveryFlowRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DiscoveryFlow());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/discover', fullMatch: true),
        RouteConfig(DiscoveryFlowRoute.name, path: '/discover')
      ];
}

/// generated route for
/// [DiscoveryFlow]
class DiscoveryFlowRoute extends PageRouteInfo<void> {
  const DiscoveryFlowRoute()
      : super(DiscoveryFlowRoute.name, path: '/discover');

  static const String name = 'DiscoveryFlowRoute';
}
