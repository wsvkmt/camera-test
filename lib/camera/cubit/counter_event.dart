part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.incrementButtonPressed() = _IncrementButtonPressed;
  const factory CounterEvent.decrementButtonPressed() = _DecrementButtonPressed;
}