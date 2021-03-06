import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'future_example_viewmodel.dart';

class FutureExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.hasError
            ? Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  'An error has occered while running the future',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Center(
                child: model.isBusy
                    ? const CircularProgressIndicator()
                    : Text(model.data ?? ''),
              ),
      ),
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}
