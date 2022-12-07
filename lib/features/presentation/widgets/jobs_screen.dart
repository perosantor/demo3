import 'package:demo3/features/data/repository/jobs_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/locator.dart';
import '../../../core/styles/colors.dart';
import '../bloc/jobs_list_bloc.dart';
import '../bloc/jobs_list_event.dart';
import 'jobs_list_widget.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Gophr Job Board'),
          bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 48),
            child: _TabBar(),
          ),
        ),
        body: BlocProvider(
          create: (_) => JobsListBloc(
            repository: locator.get<JobsRepositoryI>(),
          )..add(const JobsListFetched()),
          child: const Center(
            child: TabBarView(
              children: [
                JobsListWidget(listType: JobListType.all),
                JobsListWidget(listType: JobListType.accepted),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: DColors.baseColor.primary,
      child: TabBar(
        tabs: const [
          Tab(text: 'JOBS'),
          Tab(text: 'ACCEPTED JOBS'),
        ],
        indicatorColor: DColors.baseColor.secondary,
      ),
    );
  }
}
