// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../ui/views/home/home_view.dart' as _i2;
import '../ui/views/startup/startup_view.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    StartupView.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.StartupView());
    },
    HomeView.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.HomeView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(StartupView.name, path: '/'),
        _i3.RouteConfig(HomeView.name, path: '/home-view')
      ];
}

/// generated route for [_i1.StartupView]
class StartupView extends _i3.PageRouteInfo<void> {
  const StartupView() : super(name, path: '/');

  static const String name = 'StartupView';
}

/// generated route for [_i2.HomeView]
class HomeView extends _i3.PageRouteInfo<void> {
  const HomeView() : super(name, path: '/home-view');

  static const String name = 'HomeView';
}
