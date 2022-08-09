import 'package:flutter/material.dart';
import 'package:module_commons/export_bloc.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'bloc/home_cubit.dart';
import 'bloc/home_state.dart';
import 'widget/process_page_tile.dart';
import 'widget/process_item_resumed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _cubit = Modular.get<HomeCubit>();
  ProcessStatus _selectedStatus = ProcessStatus.unknown;

  @override
  void initState() {
    _cubit.init();
    _selectedStatus = _cubit.exhibitionStatus().first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
        bloc: _cubit,
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding:
                const EdgeInsets.only(left: PmgSpacing.xs, top: PmgSpacing.xs),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: PmgSpacing.xxxs),
                  child: Text('A fazer',
                      style: PmgTypography.h3SemiBold(
                          color: PmgColors.neutralDark)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: _buildStatusFilters()),
                ),
                const SizedBox(height: PmgSpacing.micro),
                Padding(
                  padding: const EdgeInsets.only(right: PmgSpacing.xs),
                  child: ListView(
                    shrinkWrap: true,
                    children: _buildProcesses(),
                  ),
                )
              ],
            ),
          );
        });
  }

  _buildProcesses() => _cubit
      .filterProcessesByStatus(_selectedStatus)
      .map((e) => ProcessItemResumed(
            process: e,
            onTap: () {},
          ))
      .toList();

  _buildStatusFilters() => _cubit
      .exhibitionStatus()
      .map(
        (status) => ProcessPageTile(
            status: status,
            selected: status == _selectedStatus,
            onTap: () => setState(() => _selectedStatus = status)),
      )
      .toList();
}
