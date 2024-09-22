// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextMonthPressed,
    required TResult Function() prevMonthPressed,
    required TResult Function(DateTime date) onChangeDate,
    required TResult Function(DateTime date) daySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextMonthPressed,
    TResult? Function()? prevMonthPressed,
    TResult? Function(DateTime date)? onChangeDate,
    TResult? Function(DateTime date)? daySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextMonthPressed,
    TResult Function()? prevMonthPressed,
    TResult Function(DateTime date)? onChangeDate,
    TResult Function(DateTime date)? daySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarNextMonthPressed value) nextMonthPressed,
    required TResult Function(CalendarPrevMonthPressed value) prevMonthPressed,
    required TResult Function(CalendarOnDateChange value) onChangeDate,
    required TResult Function(CalendarDaySelected value) daySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult? Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult? Function(CalendarOnDateChange value)? onChangeDate,
    TResult? Function(CalendarDaySelected value)? daySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult Function(CalendarOnDateChange value)? onChangeDate,
    TResult Function(CalendarDaySelected value)? daySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CalendarNextMonthPressedImplCopyWith<$Res> {
  factory _$$CalendarNextMonthPressedImplCopyWith(
          _$CalendarNextMonthPressedImpl value,
          $Res Function(_$CalendarNextMonthPressedImpl) then) =
      __$$CalendarNextMonthPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarNextMonthPressedImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$CalendarNextMonthPressedImpl>
    implements _$$CalendarNextMonthPressedImplCopyWith<$Res> {
  __$$CalendarNextMonthPressedImplCopyWithImpl(
      _$CalendarNextMonthPressedImpl _value,
      $Res Function(_$CalendarNextMonthPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalendarNextMonthPressedImpl
    with DiagnosticableTreeMixin
    implements CalendarNextMonthPressed {
  const _$CalendarNextMonthPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarEvent.nextMonthPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CalendarEvent.nextMonthPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarNextMonthPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextMonthPressed,
    required TResult Function() prevMonthPressed,
    required TResult Function(DateTime date) onChangeDate,
    required TResult Function(DateTime date) daySelected,
  }) {
    return nextMonthPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextMonthPressed,
    TResult? Function()? prevMonthPressed,
    TResult? Function(DateTime date)? onChangeDate,
    TResult? Function(DateTime date)? daySelected,
  }) {
    return nextMonthPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextMonthPressed,
    TResult Function()? prevMonthPressed,
    TResult Function(DateTime date)? onChangeDate,
    TResult Function(DateTime date)? daySelected,
    required TResult orElse(),
  }) {
    if (nextMonthPressed != null) {
      return nextMonthPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarNextMonthPressed value) nextMonthPressed,
    required TResult Function(CalendarPrevMonthPressed value) prevMonthPressed,
    required TResult Function(CalendarOnDateChange value) onChangeDate,
    required TResult Function(CalendarDaySelected value) daySelected,
  }) {
    return nextMonthPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult? Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult? Function(CalendarOnDateChange value)? onChangeDate,
    TResult? Function(CalendarDaySelected value)? daySelected,
  }) {
    return nextMonthPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult Function(CalendarOnDateChange value)? onChangeDate,
    TResult Function(CalendarDaySelected value)? daySelected,
    required TResult orElse(),
  }) {
    if (nextMonthPressed != null) {
      return nextMonthPressed(this);
    }
    return orElse();
  }
}

abstract class CalendarNextMonthPressed implements CalendarEvent {
  const factory CalendarNextMonthPressed() = _$CalendarNextMonthPressedImpl;
}

/// @nodoc
abstract class _$$CalendarPrevMonthPressedImplCopyWith<$Res> {
  factory _$$CalendarPrevMonthPressedImplCopyWith(
          _$CalendarPrevMonthPressedImpl value,
          $Res Function(_$CalendarPrevMonthPressedImpl) then) =
      __$$CalendarPrevMonthPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarPrevMonthPressedImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$CalendarPrevMonthPressedImpl>
    implements _$$CalendarPrevMonthPressedImplCopyWith<$Res> {
  __$$CalendarPrevMonthPressedImplCopyWithImpl(
      _$CalendarPrevMonthPressedImpl _value,
      $Res Function(_$CalendarPrevMonthPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalendarPrevMonthPressedImpl
    with DiagnosticableTreeMixin
    implements CalendarPrevMonthPressed {
  const _$CalendarPrevMonthPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarEvent.prevMonthPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CalendarEvent.prevMonthPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarPrevMonthPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextMonthPressed,
    required TResult Function() prevMonthPressed,
    required TResult Function(DateTime date) onChangeDate,
    required TResult Function(DateTime date) daySelected,
  }) {
    return prevMonthPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextMonthPressed,
    TResult? Function()? prevMonthPressed,
    TResult? Function(DateTime date)? onChangeDate,
    TResult? Function(DateTime date)? daySelected,
  }) {
    return prevMonthPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextMonthPressed,
    TResult Function()? prevMonthPressed,
    TResult Function(DateTime date)? onChangeDate,
    TResult Function(DateTime date)? daySelected,
    required TResult orElse(),
  }) {
    if (prevMonthPressed != null) {
      return prevMonthPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarNextMonthPressed value) nextMonthPressed,
    required TResult Function(CalendarPrevMonthPressed value) prevMonthPressed,
    required TResult Function(CalendarOnDateChange value) onChangeDate,
    required TResult Function(CalendarDaySelected value) daySelected,
  }) {
    return prevMonthPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult? Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult? Function(CalendarOnDateChange value)? onChangeDate,
    TResult? Function(CalendarDaySelected value)? daySelected,
  }) {
    return prevMonthPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult Function(CalendarOnDateChange value)? onChangeDate,
    TResult Function(CalendarDaySelected value)? daySelected,
    required TResult orElse(),
  }) {
    if (prevMonthPressed != null) {
      return prevMonthPressed(this);
    }
    return orElse();
  }
}

abstract class CalendarPrevMonthPressed implements CalendarEvent {
  const factory CalendarPrevMonthPressed() = _$CalendarPrevMonthPressedImpl;
}

/// @nodoc
abstract class _$$CalendarOnDateChangeImplCopyWith<$Res> {
  factory _$$CalendarOnDateChangeImplCopyWith(_$CalendarOnDateChangeImpl value,
          $Res Function(_$CalendarOnDateChangeImpl) then) =
      __$$CalendarOnDateChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$CalendarOnDateChangeImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$CalendarOnDateChangeImpl>
    implements _$$CalendarOnDateChangeImplCopyWith<$Res> {
  __$$CalendarOnDateChangeImplCopyWithImpl(_$CalendarOnDateChangeImpl _value,
      $Res Function(_$CalendarOnDateChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$CalendarOnDateChangeImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CalendarOnDateChangeImpl
    with DiagnosticableTreeMixin
    implements CalendarOnDateChange {
  const _$CalendarOnDateChangeImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarEvent.onChangeDate(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalendarEvent.onChangeDate'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarOnDateChangeImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarOnDateChangeImplCopyWith<_$CalendarOnDateChangeImpl>
      get copyWith =>
          __$$CalendarOnDateChangeImplCopyWithImpl<_$CalendarOnDateChangeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextMonthPressed,
    required TResult Function() prevMonthPressed,
    required TResult Function(DateTime date) onChangeDate,
    required TResult Function(DateTime date) daySelected,
  }) {
    return onChangeDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextMonthPressed,
    TResult? Function()? prevMonthPressed,
    TResult? Function(DateTime date)? onChangeDate,
    TResult? Function(DateTime date)? daySelected,
  }) {
    return onChangeDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextMonthPressed,
    TResult Function()? prevMonthPressed,
    TResult Function(DateTime date)? onChangeDate,
    TResult Function(DateTime date)? daySelected,
    required TResult orElse(),
  }) {
    if (onChangeDate != null) {
      return onChangeDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarNextMonthPressed value) nextMonthPressed,
    required TResult Function(CalendarPrevMonthPressed value) prevMonthPressed,
    required TResult Function(CalendarOnDateChange value) onChangeDate,
    required TResult Function(CalendarDaySelected value) daySelected,
  }) {
    return onChangeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult? Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult? Function(CalendarOnDateChange value)? onChangeDate,
    TResult? Function(CalendarDaySelected value)? daySelected,
  }) {
    return onChangeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult Function(CalendarOnDateChange value)? onChangeDate,
    TResult Function(CalendarDaySelected value)? daySelected,
    required TResult orElse(),
  }) {
    if (onChangeDate != null) {
      return onChangeDate(this);
    }
    return orElse();
  }
}

abstract class CalendarOnDateChange implements CalendarEvent {
  const factory CalendarOnDateChange(final DateTime date) =
      _$CalendarOnDateChangeImpl;

  DateTime get date;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarOnDateChangeImplCopyWith<_$CalendarOnDateChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalendarDaySelectedImplCopyWith<$Res> {
  factory _$$CalendarDaySelectedImplCopyWith(_$CalendarDaySelectedImpl value,
          $Res Function(_$CalendarDaySelectedImpl) then) =
      __$$CalendarDaySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$CalendarDaySelectedImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$CalendarDaySelectedImpl>
    implements _$$CalendarDaySelectedImplCopyWith<$Res> {
  __$$CalendarDaySelectedImplCopyWithImpl(_$CalendarDaySelectedImpl _value,
      $Res Function(_$CalendarDaySelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$CalendarDaySelectedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CalendarDaySelectedImpl
    with DiagnosticableTreeMixin
    implements CalendarDaySelected {
  const _$CalendarDaySelectedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarEvent.daySelected(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalendarEvent.daySelected'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarDaySelectedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarDaySelectedImplCopyWith<_$CalendarDaySelectedImpl> get copyWith =>
      __$$CalendarDaySelectedImplCopyWithImpl<_$CalendarDaySelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextMonthPressed,
    required TResult Function() prevMonthPressed,
    required TResult Function(DateTime date) onChangeDate,
    required TResult Function(DateTime date) daySelected,
  }) {
    return daySelected(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextMonthPressed,
    TResult? Function()? prevMonthPressed,
    TResult? Function(DateTime date)? onChangeDate,
    TResult? Function(DateTime date)? daySelected,
  }) {
    return daySelected?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextMonthPressed,
    TResult Function()? prevMonthPressed,
    TResult Function(DateTime date)? onChangeDate,
    TResult Function(DateTime date)? daySelected,
    required TResult orElse(),
  }) {
    if (daySelected != null) {
      return daySelected(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarNextMonthPressed value) nextMonthPressed,
    required TResult Function(CalendarPrevMonthPressed value) prevMonthPressed,
    required TResult Function(CalendarOnDateChange value) onChangeDate,
    required TResult Function(CalendarDaySelected value) daySelected,
  }) {
    return daySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult? Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult? Function(CalendarOnDateChange value)? onChangeDate,
    TResult? Function(CalendarDaySelected value)? daySelected,
  }) {
    return daySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarNextMonthPressed value)? nextMonthPressed,
    TResult Function(CalendarPrevMonthPressed value)? prevMonthPressed,
    TResult Function(CalendarOnDateChange value)? onChangeDate,
    TResult Function(CalendarDaySelected value)? daySelected,
    required TResult orElse(),
  }) {
    if (daySelected != null) {
      return daySelected(this);
    }
    return orElse();
  }
}

abstract class CalendarDaySelected implements CalendarEvent {
  const factory CalendarDaySelected(final DateTime date) =
      _$CalendarDaySelectedImpl;

  DateTime get date;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarDaySelectedImplCopyWith<_$CalendarDaySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
