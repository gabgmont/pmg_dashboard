import 'package:flutter/material.dart';
import 'package:module_assurance/pages/assurances/bloc/assurance_cubit.dart';
import 'package:module_commons/export_bloc.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_commons/widgets/process_tile.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/components/search/pmg_search_bar.dart';
import 'package:module_design/components/text_field/pmg_text_field.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';

import 'bloc/assurance_state.dart';
import 'widgets/status_filter_button.dart';

class AssurancesPage extends StatefulWidget {
  const AssurancesPage({Key? key}) : super(key: key);

  @override
  State<AssurancesPage> createState() => _AssurancesPageState();
}

class _AssurancesPageState extends State<AssurancesPage> {
  final _cubit = Modular.get<AssuranceCubit>();
  final _controller = TextEditingController();

  @override
  void initState() {
    _cubit.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AssuranceCubit, AssuranceState>(
      bloc: _cubit,
      listener: (context, state) {},
      builder: (context, state) => Padding(
        padding: const EdgeInsets.only(
            left: PmgSpacing.xs, top: PmgSpacing.xs, right: PmgSpacing.xs),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: PmgSpacing.xxxs),
                child: Text('Cadastros de seguro',
                    style:
                        PmgTypography.h3SemiBold(color: PmgColors.neutralDark)),
              ),
              Row(
                children: [
                  PmgSearchBar(
                    controller: _controller,
                    onChanged: _cubit.setSearchFilter,
                    hint: 'Nome, CPF, email...',
                  ),
                  const SizedBox(width: PmgSpacing.xxxs),
                  StatusFilterButton(
                    status: ResumedProcessStatus.concluded,
                    selected: _cubit.statusFilters
                        .contains(ResumedProcessStatus.concluded),
                    onTap: _cubit.updateStatusFilter,
                  ),
                  StatusFilterButton(
                    status: ResumedProcessStatus.pending,
                    selected: _cubit.statusFilters
                        .contains(ResumedProcessStatus.pending),
                    onTap: _cubit.updateStatusFilter,
                  ),
                  StatusFilterButton(
                    status: ResumedProcessStatus.refused,
                    selected: _cubit.statusFilters
                        .contains(ResumedProcessStatus.refused),
                    onTap: _cubit.updateStatusFilter,
                  ),
                  StatusFilterButton(
                    status: ResumedProcessStatus.canceled,
                    selected: _cubit.statusFilters
                        .contains(ResumedProcessStatus.canceled),
                    onTap: _cubit.updateStatusFilter,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(
                      left: PmgSpacing.xxxs,
                    ),
                    child: PmgTextField(
                      label: 'De',
                      hint: '01/01/2022',
                      controller: TextEditingController(),
                    ),
                  )),
                  const SizedBox(width: PmgSpacing.xxxs),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: PmgSpacing.xxxs),
                    child: PmgTextField(
                      label: 'Até',
                      hint: '01/01/2023',
                      controller: TextEditingController(),
                    ),
                  )),
                ],
              ),
              ..._buildProcessTiles(),
            ],
          ),
        ),
      ),
    );
  }

  _buildProcessTiles() =>
      _cubit.filterProcesses().map((e) => ProcessTile(process: e)).toList();
}
