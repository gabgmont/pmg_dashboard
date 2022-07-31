// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class PmgImage extends StatelessWidget {
  final PmgImages image;
  const PmgImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageName = describeEnum(image).toLowerCase();

    return Image.asset(
      'assets/images/$imageName.png',
      package: 'module_design',
    );
  }
}

enum PmgImages {
  pmg_logo,
  user_default
}
