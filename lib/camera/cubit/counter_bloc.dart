import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:camera/camera.dart';
import 'package:video_player/video_player.dart';


part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterEvent>((event, emit) {
      event.map(
        incrementButtonPressed: (_) => emit(state.copyWith(
          count: state.count + 1,
        )),
        decrementButtonPressed: (_) => emit(state.copyWith(
          count: state.count - 1,
        )),
      );
    });
  }
}