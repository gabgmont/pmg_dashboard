import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/assets/pmg_images.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_spacing.dart';

import '../controller/main_page_config.dart';
import 'page_icon_button.dart';

class MainMenu extends StatefulWidget {
  final Function(MainPages) onPageChange;
  const MainMenu({Key? key, required this.onPageChange}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  MainPages _currentPage = MainPages.home;

  @override
  Widget build(BuildContext context) => Container(
        color: PmgColors.primary,
        width: 120,
        height: double.infinity,
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.fromLTRB(
                    PmgSpacing.spacingXXXS,
                    PmgSpacing.spacingXXXS,
                    PmgSpacing.spacingXXXS,
                    PmgSpacing.spacingXXS),
                child: PmgImage(image: PmgImages.user_default)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: PmgSpacing.spacingXS),
              child: Container(
                height: 5,
                decoration: BoxDecoration(
                  color: PmgColors.primaryLight,
                  borderRadius: PmgRadius.pill,
                ),
              ),
            ),
            Column(
              children: [
                PageIconButton(
                    icon: PmgIcons.home,
                    label: 'Inicio',
                    selected: _currentPage == MainPages.home,
                    onTap: () => setState(() {
                          _currentPage = MainPages.home;
                          widget.onPageChange(_currentPage);
                        })),
                PageIconButton(
                    icon: PmgIcons.users,
                    label: 'Inquilinos',
                    selected: _currentPage == MainPages.tenants,
                    onTap: () => setState(() {
                          _currentPage = MainPages.tenants;
                          widget.onPageChange(_currentPage);
                        })),
                PageIconButton(
                    icon: PmgIcons.document,
                    label: 'Processos',
                    selected: _currentPage == MainPages.document,
                    onTap: () => setState(() {
                          _currentPage = MainPages.document;
                          widget.onPageChange(_currentPage);
                        })),
                PageIconButton(
                    icon: PmgIcons.real_state,
                    label: 'Imobiliarias',
                    selected: _currentPage == MainPages.realState,
                    onTap: () => setState(() {
                          _currentPage = MainPages.realState;
                          widget.onPageChange(_currentPage);
                        })),
                PageIconButton(
                    icon: PmgIcons.notifications,
                    label: 'Notificacoes',
                    selected: _currentPage == MainPages.notifications,
                    onTap: () => setState(() {
                          _currentPage = MainPages.notifications;
                          widget.onPageChange(_currentPage);
                        })),
              ],
            )
          ],
        ),
      );
}
