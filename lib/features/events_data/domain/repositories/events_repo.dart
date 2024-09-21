

import 'package:dartz/dartz.dart';
import 'package:gotham_coder_work/features/events_data/domain/entities/event_entity.dart';

abstract class EventsRepo{


  Future<Either<String ,List<GenericEventEntity>>> getEvents();
}