import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotham_coder_work/components/app_enums.dart';
import 'package:gotham_coder_work/features/events_data/domain/entities/event_entity.dart';

import '../../../../core/use_cases/usecase.dart';
import '../../domain/use_cases/get_events_usecase.dart';

part 'events_state.dart';
part 'events_cubit.freezed.dart';

class EventsCubit extends Cubit<EventsState> {

  final GetEventsUsecase getEventsUsecase;

  EventsCubit({required this.getEventsUsecase}) : super(const EventsState());


  getPopularEvents({required BuildContext context}) async {
    emit(state.copyWith(popularEvents: StateStatus.loading));

    dynamic getPopularEventsUseCaseResult = await getEventsUsecase(NoParams());
    getPopularEventsUseCaseResult.fold((errorMessage) {
      emit(state.copyWith(popularEvents: StateStatus.error, popularError: errorMessage));
    }, (popularEvents) {
      // log('Celebrity event is $popularEvents');
      if (popularEvents == []) {
        emit(state.copyWith(popularEvents: StateStatus.empty));
      } else {
        emit(state.copyWith(popularEvents: StateStatus.success, popularEventsList: popularEvents));
      }
    });
  }
}
