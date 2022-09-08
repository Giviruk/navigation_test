// Общий интерфейс для всех bloc-ов


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation_demo/base/bloc/bloc_event.dart';

abstract class BlocBase<T> {
  final StreamController<BlocEvent<T>> _eventsController =
      StreamController<BlocEvent<T>>();

  @protected
  Sink<BlocEvent<T>> get inEvents => _eventsController.sink;

  Stream<BlocEvent<T>> get outEvents => _eventsController.stream;

  void dispose() {
    _eventsController.close();
  }
}
