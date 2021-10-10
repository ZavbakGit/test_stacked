import 'package:flutter/material.dart';
import 'app/locator.dart';
import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       initialRoute: Routes.startupViewRoute,
//       onGenerateRoute: AppRouter().onGenerateRoute,
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Test stacked',
      debugShowCheckedModeBanner: false,

      //navigation
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),

      //internalization
      //locale: context.watch<LocaleProvider>().locale,
      //supportedLocales: S.delegate.supportedLocales
    );
  }
}
