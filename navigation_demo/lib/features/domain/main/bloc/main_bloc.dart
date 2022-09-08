import 'dart:async';

import '../../../../base/bloc/bloc_base.dart';
import '../../../../base/bloc/bloc_event.dart';


class MainBloc extends BlocBase<MainBlocEvent> {

  int _counter = 0;

  final StreamController<int> _counterController = StreamController<int>();

  Sink<int> get _inCounter => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  MainBloc();

  void onIncrementButton() {
    _handleIncrementCounterEvent();
  }

  void onGoToNextScreenButton() {
    inEvents.add(BlocEvent(type: MainBlocEvent.goToNextScreen, parameters: {}));
  }

  @override
  void dispose() {
    // закрываем контроллер
    _counterController.close();

    // не забываем вызвать метод суперкласса
    super.dispose();
  }

  void _handleIncrementCounterEvent() {
    _inCounter.add(++_counter);
  }
}