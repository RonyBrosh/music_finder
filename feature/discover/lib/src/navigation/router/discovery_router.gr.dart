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
      final args = routeData.argsAs<DiscoveryFlowRouteArgs>(
          orElse: () => const DiscoveryFlowRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: DiscoveryFlow(key: args.key, initialState: args.initialState));
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
class DiscoveryFlowRoute extends PageRouteInfo<DiscoveryFlowRouteArgs> {
  DiscoveryFlowRoute({Key? key, DiscoveryFlowState? initialState})
      : super(DiscoveryFlowRoute.name,
            path: '/discover',
            args: DiscoveryFlowRouteArgs(key: key, initialState: initialState));

  static const String name = 'DiscoveryFlowRoute';
}

class DiscoveryFlowRouteArgs {
  const DiscoveryFlowRouteArgs({this.key, this.initialState});

  final Key? key;

  final DiscoveryFlowState? initialState;

  @override
  String toString() {
    return 'DiscoveryFlowRouteArgs{key: $key, initialState: $initialState}';
  }
}
