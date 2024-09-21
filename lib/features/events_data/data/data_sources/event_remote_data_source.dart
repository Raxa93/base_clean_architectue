

//Here I am usign my own api, I am unable to get api key from weather api and covid api etc so I amusing my own endpoint I was using in my previous

import 'package:dio/dio.dart';
import 'package:gotham_coder_work/features/events_data/data/models/events_model.dart';

abstract class EventRemoteDataSource{

final Dio dio = Dio();


  Future<GenericEventResponse> getAllEvents();


}