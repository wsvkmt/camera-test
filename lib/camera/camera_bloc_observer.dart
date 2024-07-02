import 'package:bloc/bloc.dart';
import 'dart:developer';

/// {@template CameraBloc_observer}
/// [BlocObserver] for the CameraBloc application which
/// observes all state changes.
/// {@endtemplate}
class CameraBlocObserver extends BlocObserver {
  /// {@macro CameraBloc_observer}
  const CameraBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}