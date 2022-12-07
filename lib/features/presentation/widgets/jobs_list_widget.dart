import 'package:demo3/features/domain/entity/job_entity.dart';
import 'package:demo3/features/presentation/bloc/jobs_list_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/styles/colors.dart';
import '../bloc/jobs_list_bloc.dart';
import 'error_widget.dart';
import 'jobs_list_item.dart';

enum JobListType { all, accepted }

class JobsListWidget extends StatelessWidget {
  final JobListType listType;

  const JobsListWidget({
    super.key,
    required this.listType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobsListBloc, JobsListState>(
      builder: (context, state) {
        switch (state.status) {
          case PhotoListStatus.failure:
            return const ErrorMessageWidget(text: 'Error just occurred :(');
          case PhotoListStatus.success:
            final jobList = listType == JobListType.all ? state.allJobsList : state.acceptedJobsList;
            if (jobList.isEmpty) return Container();
            return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return JobListItem(
                    job: jobList[index],
                    onAccepted: () {
                      final photoJson = jobList[index].toJson();
                      debugPrint('ACCEPTED: $photoJson');
                      context
                          .read<JobsListBloc>()
                          .add(JobsListUpdated(updatedJob: jobList[index].copyWith(status: JobStatus.accepted)));
                    },
                    onRejected: () {
                      final photoJson = jobList[index].toJson();
                      debugPrint('REJECTED: $photoJson');
                      context
                          .read<JobsListBloc>()
                          .add(JobsListUpdated(updatedJob: jobList[index].copyWith(status: JobStatus.rejected)));
                    },
                  );
                },
                itemCount: jobList.length);
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
