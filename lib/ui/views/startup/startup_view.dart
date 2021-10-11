import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'startup_viewmodel.dart';

class StartupView extends ViewModelBuilderWidget<StartupViewModel> {

  @override
  bool get disposeViewModel => true;

  @override
  Widget builder(
      BuildContext context, StartupViewModel viewModel, Widget? child) {
    return Scaffold(
      body: const Center(
        child: Text('Startup View'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.navigateToHome(),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) => StartupViewModel();
}
