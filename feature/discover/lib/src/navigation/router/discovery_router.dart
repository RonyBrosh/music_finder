import 'package:auto_route/auto_route.dart';
import 'package:discover/src/navigation/flow/discovery_flow.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

part 'discovery_router.gr.dart';

@lazySingleton
@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: DiscoveryFlow, path: '/discover', initial: true),
  ],
)
class DiscoveryRouter extends _$DiscoveryRouter {}
