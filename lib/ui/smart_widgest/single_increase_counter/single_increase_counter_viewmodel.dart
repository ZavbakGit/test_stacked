import 'package:stacked/stacked.dart';
import 'package:test_stacked/app/locator.dart';
import 'package:test_stacked/services/counter_service.dart';

class SingleIncreaseCounterViewModel extends ReactiveViewModel {

  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}