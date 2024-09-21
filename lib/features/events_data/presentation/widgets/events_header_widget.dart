

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotham_coder_work/core/app_colors/app_colors.dart';
import 'package:gotham_coder_work/core/extensions/app_extensions.dart';
import 'package:gotham_coder_work/features/events_data/presentation/cubit/events_cubit.dart';

import '../../../../components/app_enums.dart';
import '../../../../components/loading_shimmers.dart';
import '../../../../components/retry_error_widget.dart';
import '../../../../core/app_styles/app_styles.dart';
import '../../domain/entities/event_entity.dart';

class EventsHeaderWidget extends StatelessWidget {
  final String headerText;
  final Color headerColor;
  final Color seeMoreColor;
  final bool showSeeMore;
  final dynamic onViewAllClick;
  const EventsHeaderWidget({super.key,required this.headerText,this.onViewAllClick,required this.headerColor,required this.seeMoreColor,required this.showSeeMore});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(headerText,style:  TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: headerColor),),

      showSeeMore ?    InkWell(
            onTap: onViewAllClick,
            child: Container(
              height: 25,
              width: 70,
              // color: Colors.red,
              alignment: Alignment.centerRight,
              child:  Text(
                'See More',
                style: TextStyle(
                  fontSize: 14,
                  color: seeMoreColor,
                ),
              )
            ),
          ) : const SizedBox(),


        ],
      ),
    );
  }
}


class CelebrityEventListView extends StatelessWidget {


  const CelebrityEventListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      // width: 200,
      child: BlocSelector<EventsCubit, EventsState, (StateStatus, List<GenericEventEntity>, String)>(
          selector: (state) => (state.popularEvents, state.popularEventsList, state.popularError),
          builder: (context, selectedState) {
            final (celebritiesEventStatus, celebrityEventsList, celebrityEventsError) = selectedState;
            // log('State status is error $stateStatus with messsage $celebrityEventsError and list length is ${selectedState}');
            if (celebritiesEventStatus == StateStatus.loading) {
              return const EventsSquareShapeShimmer();
            } else if (celebritiesEventStatus == StateStatus.empty) {
              return Center(
                  child: Text('No Event found'));
            } else if (celebritiesEventStatus == StateStatus.error) {
              return retryErrorWidget(
                  height: 130,
                  width: 130,
                  errorMessage: celebrityEventsError,
                  onTap: () {
                    context.read<EventsCubit>().getPopularEvents(context: context);
                  });
            }
            return ListView.builder(
              itemCount: celebrityEventsList.length,
              // itemExtent: 300,
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final event = celebrityEventsList[index];
                return EventHomeCard(
                  eventEntity: event,
                );
              },
            );
          }),
    );
  }
}


class EventHomeCard extends StatelessWidget {
  final GenericEventEntity eventEntity;


  const EventHomeCard({super.key, required this.eventEntity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 5, right: 3),
        child: Container(
          decoration: AppStyles.roundedContainerWithShadow.copyWith(borderRadius: const BorderRadius.all(Radius.circular(12.0))),
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Background image
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
                child: CachedNetworkImage(
                  height: 120,
                  width: 160,
                  imageUrl: eventEntity.coverPhoto,
                  placeholder: (context, url) {
                    return Icon(Icons.circle);
                  },
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error);
                  },
                  fit: BoxFit.cover,
                ),
              ),
              10.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  eventEntity.title,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              5.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w300, color: Colors.black),
                    children: [
                      TextSpan(
                        text: eventEntity.city,
                      ),
                      const WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.0, right: 4.0, bottom: 3.0),
                          child: Icon(
                            Icons.fiber_manual_record,
                            size: 8,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              10.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${eventEntity.unit} ${eventEntity.price}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
              ),
              10.height,
            ],
          ),
        ),
      ),
    );
  }
}