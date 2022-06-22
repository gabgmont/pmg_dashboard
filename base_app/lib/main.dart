import 'package:base_app/pmg_app.dart';
import 'package:base_app/pmg_module.dart';
import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';

void main() {
  runApp(ModularApp(module: PmgModule(), child: const PmgMainApp()));
}

