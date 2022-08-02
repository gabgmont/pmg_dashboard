import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:module_commons/export_bloc.dart';
import 'package:module_design/assets/pmg_images.dart';

class RegistrainPage extends StatefulWidget {
  const RegistrainPage({Key? key}) : super(key: key);

  @override
  State<RegistrainPage> createState() => _RegistrainPageState();
}

class _RegistrainPageState extends State<RegistrainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                PmgImage(image: PmgImages.pmg_logo),
                Text(
                  'Contrate seu seguro',
                  style: TextStyle(fontSize: 32, fontStyle: FontStyle.normal),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width * 0.88,
          )
        ],
      ),
    );
  }
}
