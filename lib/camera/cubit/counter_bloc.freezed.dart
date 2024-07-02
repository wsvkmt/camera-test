// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementButtonPressed,
    required TResult Function() decrementButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementButtonPressed,
    TResult? Function()? decrementButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementButtonPressed,
    TResult Function()? decrementButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementButtonPressed value)
        incrementButtonPressed,
    required TResult Function(_DecrementButtonPressed value)
        decrementButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementButtonPressed value)? incrementButtonPressed,
    TResult? Function(_DecrementButtonPressed value)? decrementButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementButtonPressed value)? incrementButtonPressed,
    TResult Function(_DecrementButtonPressed value)? decrementButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res, CounterEvent>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res, $Val extends CounterEvent>
    implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IncrementButtonPressedImplCopyWith<$Res> {
  factory _$$IncrementButtonPressedImplCopyWith(
          _$IncrementButtonPressedImpl value,
          $Res Function(_$IncrementButtonPressedImpl) then) =
      __$$IncrementButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementButtonPressedImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$IncrementButtonPressedImpl>
    implements _$$IncrementButtonPressedImplCopyWith<$Res> {
  __$$IncrementButtonPressedImplCopyWithImpl(
      _$IncrementButtonPressedImpl _value,
      $Res Function(_$IncrementButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncrementButtonPressedImpl implements _IncrementButtonPressed {
  const _$IncrementButtonPressedImpl();

  @override
  String toString() {
    return 'CounterEvent.incrementButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementButtonPressed,
    required TResult Function() decrementButtonPressed,
  }) {
    return incrementButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementButtonPressed,
    TResult? Function()? decrementButtonPressed,
  }) {
    return incrementButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementButtonPressed,
    TResult Function()? decrementButtonPressed,
    required TResult orElse(),
  }) {
    if (incrementButtonPressed != null) {
      return incrementButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementButtonPressed value)
        incrementButtonPressed,
    required TResult Function(_DecrementButtonPressed value)
        decrementButtonPressed,
  }) {
    return incrementButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementButtonPressed value)? incrementButtonPressed,
    TResult? Function(_DecrementButtonPressed value)? decrementButtonPressed,
  }) {
    return incrementButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementButtonPressed value)? incrementButtonPressed,
    TResult Function(_DecrementButtonPressed value)? decrementButtonPressed,
    required TResult orElse(),
  }) {
    if (incrementButtonPressed != null) {
      return incrementButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _IncrementButtonPressed implements CounterEvent {
  const factory _IncrementButtonPressed() = _$IncrementButtonPressedImpl;
}

/// @nodoc
abstract class _$$DecrementButtonPressedImplCopyWith<$Res> {
  factory _$$DecrementButtonPressedImplCopyWith(
          _$DecrementButtonPressedImpl value,
          $Res Function(_$DecrementButtonPressedImpl) then) =
      __$$DecrementButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecrementButtonPressedImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$DecrementButtonPressedImpl>
    implements _$$DecrementButtonPressedImplCopyWith<$Res> {
  __$$DecrementButtonPressedImplCopyWithImpl(
      _$DecrementButtonPressedImpl _value,
      $Res Function(_$DecrementButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DecrementButtonPressedImpl implements _DecrementButtonPressed {
  const _$DecrementButtonPressedImpl();

  @override
  String toString() {
    return 'CounterEvent.decrementButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementButtonPressed,
    required TResult Function() decrementButtonPressed,
  }) {
    return decrementButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementButtonPressed,
    TResult? Function()? decrementButtonPressed,
  }) {
    return decrementButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementButtonPressed,
    TResult Function()? decrementButtonPressed,
    required TResult orElse(),
  }) {
    if (decrementButtonPressed != null) {
      return decrementButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementButtonPressed value)
        incrementButtonPressed,
    required TResult Function(_DecrementButtonPressed value)
        decrementButtonPressed,
  }) {
    return decrementButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementButtonPressed value)? incrementButtonPressed,
    TResult? Function(_DecrementButtonPressed value)? decrementButtonPressed,
  }) {
    return decrementButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementButtonPressed value)? incrementButtonPressed,
    TResult Function(_DecrementButtonPressed value)? decrementButtonPressed,
    required TResult orElse(),
  }) {
    if (decrementButtonPressed != null) {
      return decrementButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _DecrementButtonPressed implements CounterEvent {
  const factory _DecrementButtonPressed() = _$DecrementButtonPressedImpl;
}

/// @nodoc
mixin _$CounterState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res, CounterState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterStateImplCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$$CounterStateImplCopyWith(
          _$CounterStateImpl value, $Res Function(_$CounterStateImpl) then) =
      __$$CounterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$CounterStateImplCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$CounterStateImpl>
    implements _$$CounterStateImplCopyWith<$Res> {
  __$$CounterStateImplCopyWithImpl(
      _$CounterStateImpl _value, $Res Function(_$CounterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$CounterStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CounterStateImpl implements _CounterState {
  const _$CounterStateImpl({this.count = 0});

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'CounterState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterStateImplCopyWith<_$CounterStateImpl> get copyWith =>
      __$$CounterStateImplCopyWithImpl<_$CounterStateImpl>(this, _$identity);
}

abstract class _CounterState implements CounterState {
  const factory _CounterState({final int count}) = _$CounterStateImpl;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$CounterStateImplCopyWith<_$CounterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
