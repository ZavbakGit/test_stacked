import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class CounterService with ReactiveServiceMixin { // 1
  // 2
  //final RxValue<int> _counter = RxValue<int>(1);
  final ReactiveValue<int> _counter = ReactiveValue<int>(0);



  CounterService() {
    //3
    listenToReactiveValues([_counter]);
  }

  int get counter => _counter.value;

  void incrementCounter() {
    _counter.value++;
  }

  void doubleCounter() {
    _counter.value *= 2;
  }
}