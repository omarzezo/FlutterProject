import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocDelegate extends BlocDelegate{
  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
    print('Bloc From Transition:${bloc.toString()} \n Transition : ${transition.toString()}');
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }
}