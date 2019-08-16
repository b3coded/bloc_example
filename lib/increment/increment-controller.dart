
import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';

class IncrementController implements BlocBase{
  var _counter = 0;

  // var counter
  var _counterController = StreamController<int>();
  Stream<int> get outCounter => _counterController.stream;
  Sink<int> get inCounter => _counterController.sink;

  increment(){
    _counter++;
    inCounter.add(_counter);
  }

  @override
  void dispose() {
    _counterController.close();
  }

  @override
  void addListener(listener) {
    // TODO: implement addListener
  }


  @override
  // TODO: implement hasListeners
  bool get hasListeners => null;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
  }

  @override
  void removeListener(listener) {
    // TODO: implement removeListener
  }

}