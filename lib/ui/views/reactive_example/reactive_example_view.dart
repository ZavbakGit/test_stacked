import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import 'package:test_stacked/ui/smart_widgest/double_increase_counter/double_increase_counter.dart';
import 'package:test_stacked/ui/smart_widgest/single_increase_counter/single_increase_counter.dart';
import 'package:test_stacked/ui/views/partial_builds/partial_builds_viewmodel.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            SingleIncreaseCounter(),
            SizedBox(width: 50),
            DoubleIncreaseCounter(),
          ],
        ),
      ),
    );
  }
}