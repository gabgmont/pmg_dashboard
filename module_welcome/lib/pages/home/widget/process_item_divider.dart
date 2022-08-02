import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_design/styles/pmg_colors.dart';

class ProcessItemDivider extends StatelessWidget {
  const ProcessItemDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 16,
        width: 1,
        color: PmgColors.primaryDark,
      );
}
