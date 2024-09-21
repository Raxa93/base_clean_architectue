part of 'events_cubit.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    
    @Default(StateStatus.idle) StateStatus popularEvents,
    @Default([]) List<GenericEventEntity> popularEventsList,
    @Default('') String popularError,

}) = _Initial;
}
