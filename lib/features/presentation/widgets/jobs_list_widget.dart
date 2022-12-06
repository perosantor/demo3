import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/styles/colors.dart';
import '../bloc/jobs_list_bloc.dart';
import 'error_widget.dart';
import 'jobs_list_item.dart';

class JobsListWidget extends StatefulWidget {
  const JobsListWidget({super.key});

  @override
  State<JobsListWidget> createState() => _JobsListWidgetState();
}

class _JobsListWidgetState extends State<JobsListWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobsListBloc, JobsListState>(
      builder: (context, state) {
        switch (state.status) {
          case PhotoListStatus.failure:
            return const ErrorMessageWidget(text: 'Error');
          case PhotoListStatus.success:
            if (state.jobList.isEmpty) {
              return const ErrorMessageWidget(text: 'Empty list');
            }
            return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return JobListItem(
                    job: state.jobList[index],
                    onAccepted: () {
                      final photoJson = state.jobList[index].toJson();
                      print('ACCEPTED index: $photoJson');
                    },
                    onRejected: () {
                      final photoJson = state.jobList[index].toJson();
                      print('REJECTED index: $photoJson');
                    },
                  );
                },
                itemCount: state.jobList.length);
          case PhotoListStatus.initial:
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: DColors.baseColor.gray,
                valueColor: AlwaysStoppedAnimation<Color>(DColors.baseColor.secondary),
              ),
            );
        }
      },
    );
  }
}
