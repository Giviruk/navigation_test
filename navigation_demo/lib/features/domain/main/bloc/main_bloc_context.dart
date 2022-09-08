import 'package:flutter/material.dart';

import '../../../../base/bloc/bloc_context_base.dart';
import '../../../../base/bloc/bloc_event.dart';
import 'main_bloc.dart';

class MainBlocContext extends BlocContextBase<MainBloc> {
  @override
  void subscribe(MainBloc bloc, BuildContext context) {
    bloc.outEvents.listen((BlocEvent<MainBlocEvent> event) {
      switch (event.type) {
        case MainBlocEvent.goToNextScreen:
          debugPrint("test");
          //SecondScreenRouter.openModule(context);
          break;
        default:
          assert(false, "Should never reach there");
          break;
      }
    });
  }
}