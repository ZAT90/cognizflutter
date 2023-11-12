import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class SimpleBlocObserver extends BlocObserver {
  var logger = Logger();
  @override
  void onEvent(Bloc bloc, Object? event) {
   // logger.d(event);
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase cubit, Change change) {
   // print(change);
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
  //  print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase cubit, Object error, StackTrace stackTrace) {
  //  print(error);
    super.onError(cubit, error, stackTrace);
  }
}