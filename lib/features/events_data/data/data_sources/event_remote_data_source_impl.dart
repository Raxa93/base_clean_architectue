


import 'package:dio/dio.dart';
import 'package:gotham_coder_work/components/app_urls.dart';
import 'package:gotham_coder_work/core/dio_utils.dart';
import 'package:gotham_coder_work/features/events_data/data/data_sources/event_remote_data_source.dart';
import 'package:gotham_coder_work/features/events_data/data/models/events_model.dart';

class EventRemoteDataSourceImpl extends EventRemoteDataSource{



  @override
  Dio get dio => Utils.getDio();


  @override
  Future<GenericEventResponse> getAllEvents() async {
   try{
     var response = await dio.get(
       AppUrls.getPopularEvents
     );


     if(response.statusCode == 200){
       GenericEventResponse popularEvents = GenericEventResponse.fromJson(response.data);
       return popularEvents;
     }else{
       throw "invalid response";
     }
     
   }catch(e){
     return Future.error(e);
   }
  }







}