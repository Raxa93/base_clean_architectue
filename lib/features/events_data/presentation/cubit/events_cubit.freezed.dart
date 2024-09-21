// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventsState {
  StateStatus get popularEvents => throw _privateConstructorUsedError;
  List<GenericEventEntity> get popularEventsList =>
      throw _privateConstructorUsedError;
  String get popularError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
  @useResult
  $Res call(
      {StateStatus popularEvents,
      List<GenericEventEntity> popularEventsList,
      String popularError});
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularEvents = null,
    Object? popularEventsList = null,
    Object? popularError = null,
  }) {
    return _then(_value.copyWith(
      popularEvents: null == popularEvents
          ? _value.popularEvents
          : popularEvents // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      popularEventsList: null == popularEventsList
          ? _value.popularEventsList
          : popularEventsList // ignore: cast_nullable_to_non_nullable
              as List<GenericEventEntity>,
      popularError: null == popularError
          ? _value.popularError
          : popularError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus popularEvents,
      List<GenericEventEntity> popularEventsList,
      String popularError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularEvents = null,
    Object? popularEventsList = null,
    Object? popularError = null,
  }) {
    return _then(_$InitialImpl(
      popularEvents: null == popularEvents
          ? _value.popularEvents
          : popularEvents // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      popularEventsList: null == popularEventsList
          ? _value._popularEventsList
          : popularEventsList // ignore: cast_nullable_to_non_nullable
              as List<GenericEventEntity>,
      popularError: null == popularError
          ? _value.popularError
          : popularError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.popularEvents = StateStatus.idle,
      final List<GenericEventEntity> popularEventsList = const [],
      this.popularError = ''})
      : _popularEventsList = popularEventsList;

  @override
  @JsonKey()
  final StateStatus popularEvents;
  final List<GenericEventEntity> _popularEventsList;
  @override
  @JsonKey()
  List<GenericEventEntity> get popularEventsList {
    if (_popularEventsList is EqualUnmodifiableListView)
      return _popularEventsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularEventsList);
  }

  @override
  @JsonKey()
  final String popularError;

  @override
  String toString() {
    return 'EventsState(popularEvents: $popularEvents, popularEventsList: $popularEventsList, popularError: $popularError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.popularEvents, popularEvents) ||
                other.popularEvents == popularEvents) &&
            const DeepCollectionEquality()
                .equals(other._popularEventsList, _popularEventsList) &&
            (identical(other.popularError, popularError) ||
                other.popularError == popularError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, popularEvents,
      const DeepCollectionEquality().hash(_popularEventsList), popularError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements EventsState {
  const factory _Initial(
      {final StateStatus popularEvents,
      final List<GenericEventEntity> popularEventsList,
      final String popularError}) = _$InitialImpl;

  @override
  StateStatus get popularEvents;
  @override
  List<GenericEventEntity> get popularEventsList;
  @override
  String get popularError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
