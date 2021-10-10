import 'package:auto_route/auto_route.dart';
import 'package:test_stacked/ui/views/home/home_view.dart';
import 'package:test_stacked/ui/views/startup/startup_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Router',
  routes: <AutoRoute>[
    AutoRoute(page: StartupView, initial: true),
    AutoRoute(page: HomeView),
  ],
)
class $AppRouter {}

