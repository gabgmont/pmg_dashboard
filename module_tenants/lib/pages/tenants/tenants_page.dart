import 'package:flutter/material.dart';
import 'package:module_commons/export_bloc.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/components/search/pmg_search_bar.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_spacing.dart';
import 'package:module_design/styles/pmg_typography.dart';
import 'package:module_tenants/pages/tenants/bloc/tenants_cubit.dart';
import 'package:module_tenants/pages/tenants/bloc/tenants_state.dart';
import 'package:module_tenants/pages/tenants/widgets/tenants_seartch_item.dart';

import 'widgets/tenants_search_header.dart';

class TenantsPage extends StatefulWidget {
  const TenantsPage({Key? key}) : super(key: key);

  @override
  State<TenantsPage> createState() => _TenantsPageState();
}

class _TenantsPageState extends State<TenantsPage> {
  final _cubit = Modular.get<TenantsCubit>();
  final _controller = TextEditingController();
  
  @override
  void initState() {
    _cubit.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: PmgSpacing.xs, top: PmgSpacing.xs, right: PmgSpacing.xs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: PmgSpacing.xxxs),
            child: Text('Inquilinos cadastrados',
                style: PmgTypography.h3SemiBold(color: PmgColors.neutralDark)),
          ),
          PmgSearchBar(
            controller: _controller,
            onChanged: _cubit.filter,
            hint: 'Nome, CPF, email...',
          ),
          BlocBuilder<TenantsCubit, TenantsState>(
              bloc: _cubit,
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                return CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    const SliverToBoxAdapter(
                      child: TenantsSearchHeader(),
                    ),
                    SliverList(
                        delegate: SliverChildListDelegate(
                      _buildTenantList(),
                    ))
                  ],
                );
              })
        ],
      ),
    );
  }

  List<Widget> _buildTenantList() => _cubit
      .filterBy()
      .map((model) => TenantsSearchItem(tenantsModel: model))
      .toList();
}
