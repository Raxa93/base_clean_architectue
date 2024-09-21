


import '../../domain/entities/event_entity.dart';
import '../models/events_model.dart';

class GenericEventMapper {
  static GenericEventEntity toGenericEventEntity(GenericEventModel popularEventModel) {
    return GenericEventEntity(
        eventId: popularEventModel.id,
        eventDate: popularEventModel.eventDate,
       title: popularEventModel.title,
        status: popularEventModel.status,
        description: popularEventModel.description,
        contactNumber: popularEventModel.contactNo,
        hasTicket: popularEventModel.isTicket,
        tickerUrl: popularEventModel.ticketUrl,
        coverPhoto: popularEventModel.coverPicture,
        unit: popularEventModel.priceUnit,
        city: popularEventModel.city,
        interestedCount: popularEventModel.interestedCount,
        eventTime: popularEventModel.eventTime,
        location: popularEventModel.location,
        latitude: popularEventModel.latitude,
        rejected: popularEventModel.rejected,
        interested: popularEventModel.interested,
        views: popularEventModel.views,
        longitude: popularEventModel.longitude,
        price: popularEventModel.price,);
  }

  static List<GenericEventEntity> toGenericEventEntityListEntity(List<GenericEventModel> popularEventModel) {
    return popularEventModel.map((event) => toGenericEventEntity(event)).toList();
  }
}