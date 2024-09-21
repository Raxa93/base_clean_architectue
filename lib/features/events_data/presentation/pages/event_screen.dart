

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotham_coder_work/core/app_colors/app_colors.dart';
import 'package:gotham_coder_work/core/extensions/app_extensions.dart';
import 'package:gotham_coder_work/features/events_data/presentation/cubit/events_cubit.dart';

import '../widgets/events_header_widget.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {

  @override
  void initState() {
    context.read<EventsCubit>().getPopularEvents(context: context);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          50.height,
          EventsHeaderWidget(
              headerColor: Colors.black,
              seeMoreColor: AppColors.primaryColor,
              showSeeMore: true,
              headerText: 'Celebrity Event',
              onViewAllClick: () {
      
              }),
          const CelebrityEventListView(),
        ],
      ),
    );
  }
}
