import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_stacked/ui/views/future_example/future_example_view.dart';
import 'package:test_stacked/ui/views/partial_builds/partial_builds_view.dart';
import 'package:test_stacked/ui/views/reactive_example/reactive_example_view.dart';
import 'package:test_stacked/ui/views/stream_example/stream_example_view.dart';
import 'app/locator.dart';
import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: StreamExampleView()
      // navigatorKey: StackedService.navigatorKey,
      // // home: AddCardView(), // Used when testing a view
      // initialRoute: Routes.startupViewRoute,
      // onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static final router = AppRouter();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       title: 'Test stacked',
//       debugShowCheckedModeBanner: false,
//
//       //navigation
//       routerDelegate: router.delegate(),
//       routeInformationParser: router.defaultRouteParser(),
//
//       //internalization
//       //locale: context.watch<LocaleProvider>().locale,
//       //supportedLocales: S.delegate.supportedLocales
//     );
//   }
// }
