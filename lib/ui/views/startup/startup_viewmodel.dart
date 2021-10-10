import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_stacked/app/locator.dart';
import 'package:test_stacked/app/router.gr.dart';

import '../../../main.dart';

class StartupViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome() async {
    await _navigationService.navigateTo(HomeView.name);
    //await MyApp.router.push(HomeView());
  }

}