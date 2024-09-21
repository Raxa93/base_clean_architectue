import 'package:equatable/equatable.dart';

class GenericEventEntity extends Equatable {
  final int eventId;
  final String title;
  final String city;
  final String coverPhoto;
  final String eventDate;
  final String latitude;
  final String longitude;
  final String description;
  final String contactNumber;
  final String eventTime;
  final String location;
  final String price;
  final String tickerUrl;
  final String hasTicket;
  final String status;
  final String unit;

  final int interestedCount;

  final int interested ;
  final int rejected ;
  final int views;

  const GenericEventEntity({
    required this.eventId,
    required this.title,
    required this.city,
    required this.coverPhoto,
    required this.eventDate,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.contactNumber,
    required this.interestedCount,
    required this.eventTime,
    required this.location,
    required this.price,
    required this.tickerUrl,
    required this.hasTicket,
    required this.status,required this.unit,

    required this.views,
    required this.interested,
    required this.rejected
  });

  @override
  List<Object?> get props => [
    eventId,
    title,
    city,
    coverPhoto,
    unit,
    interestedCount,
    eventDate,
    latitude,
    longitude,
    description,
    contactNumber,
    eventTime,
    location,
    price,
    tickerUrl,
    hasTicket,
    status,

    rejected,
    views,
    interested,
  ];
}
