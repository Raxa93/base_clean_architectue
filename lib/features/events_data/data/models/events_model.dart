

class GenericEventResponse {
  final int status;
  final bool success;
  final String message;
  final List<GenericEventModel> eventData;

  GenericEventResponse({
    required this.status,
    required this.message,
    required this.success,
    required this.eventData,
  });

  factory GenericEventResponse.fromJson(Map<String, dynamic> json) {
    return GenericEventResponse(
      status: json['status'] ?? 400,
      success: json['success'] ?? false,
      message: json['message'] ?? 'Something went wrong',
      eventData: (json['data'] as List<dynamic>? ?? []).map((i) => GenericEventModel.fromJson(i)).toList(),
    );
  }
}


class GenericEventModel {
  final int id;
  final String title;
  final String city;
  final String coverPicture;
  final String eventDate;
  final String latitude;
  final String longitude;
  final String description;
  final String contactNo;
  final String eventTime;
  final int celebId;
  final int categoryId;
  final String location;
  final String region;
  final String price;
  final String ticketUrl;
  final String isTicket;
  final String popular;
  final String status;
  final String createdAt;
  final String updatedAt;
  final String priceUnit;
  final int interestedCount;
  final int interested;

  final int rejected;

  final int views;

  GenericEventModel({
    required this.id,
    required this.title,
    required this.city,
    required this.coverPicture,
    required this.eventDate,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.contactNo,
    required this.eventTime,
    required this.celebId,
    required this.categoryId,
    required this.location,
    required this.region,
    required this.price,
    required this.ticketUrl,
    required this.isTicket,
    required this.popular,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.priceUnit,
    required this.interestedCount,
    this.interested = 0,
    this.rejected = 0,
    this.views = 0,
  });

  factory GenericEventModel.fromJson(Map<String, dynamic> json) {

    return GenericEventModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      city: json['city_name'] ?? '',
      coverPicture: json['cover_picture'] ?? 'https://www.vogueentertainment.com.au/wp-content/uploads/2023/07/Celebrity-singer-jessica-mauboy.jpg',
      eventDate: json['event_date'] ?? '2024-05-22',
      latitude: json['latitude'] ?? '',
      longitude: json['longitude'] ?? '',
      description: json['description'] ?? '',
      contactNo: json['contact_no'] ?? '',
      eventTime: json['event_time'] ?? '',
      celebId: json['celeb_id'] ?? 0,
      categoryId: json['category_id'] ?? 0,
      location: json['location'] ?? '',
      region: json['region'] ?? '',
      price: json['price'] ?? '',
      ticketUrl: json['ticket_url'] ?? '',
      isTicket: json['is_ticket'] ?? 'no',
      popular: json['popular'] ?? '',
      status: json['status'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      priceUnit: json['currency'] ?? 'Rs',
      interestedCount: json['event_count'] ?? 28,
      interested: json['intrested'] ?? 0,
      rejected: json['rejected'] ?? 0,
      views: json['views'] ?? 0,
    );
  }
}

