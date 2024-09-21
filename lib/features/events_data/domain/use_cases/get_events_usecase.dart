


import 'package:dartz/dartz.dart';
import 'package:gotham_coder_work/core/use_cases/usecase.dart';
import 'package:gotham_coder_work/features/events_data/domain/entities/event_entity.dart';
import 'package:gotham_coder_work/features/events_data/domain/repositories/events_repo.dart';

class GetEventsUsecase extends Usecase<List<GenericEventEntity> ,NoParams>{

  final EventsRepo eventsRepo;


  GetEventsUsecase({required this.eventsRepo});

  @override
  Future<Either<String, List<GenericEventEntity>>> call(NoParams params) async {
return await eventsRepo.getEvents();
  }






}