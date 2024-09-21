


import 'package:dartz/dartz.dart';
import 'package:gotham_coder_work/core/exceptions/rest_exceptions.dart';
import 'package:gotham_coder_work/features/events_data/data/data_sources/event_remote_data_source.dart';
import 'package:gotham_coder_work/features/events_data/data/mappers/generic_event_mapper.dart';
import 'package:gotham_coder_work/features/events_data/data/models/events_model.dart';
import 'package:gotham_coder_work/features/events_data/domain/entities/event_entity.dart';
import 'package:gotham_coder_work/features/events_data/domain/repositories/events_repo.dart';

class EventsRepoImpl extends EventsRepo{

  final EventRemoteDataSource eventRemoteDataSource;

  EventsRepoImpl({required this.eventRemoteDataSource});

  @override
  Future<Either<String, List<GenericEventEntity>>> getEvents() async {

    try{
      GenericEventResponse responseData = await eventRemoteDataSource.getAllEvents();
      if(responseData.success == true || responseData.status == 200){
        return Right(GenericEventMapper.toGenericEventEntityListEntity(responseData.eventData));
      }else{
        return Left(responseData.message);
      }
    }catch(e){
      String error = handleExceptions(e);
      return Left(error.toString());
    }


  }





}