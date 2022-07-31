import 'package:flutter/material.dart';
import 'package:module_design/components/control/check_box/check_box_config.dart';
import 'package:module_design/styles/pmg_radius.dart';

import '../../../assets/pmg_icons.dart';

class PmgCheckBox extends StatefulWidget {
  final bool active;
  final bool selected;
  final bool hasError;
  final Function(bool isSet) onChange;

  const PmgCheckBox(
      {Key? key,
      this.active = true,
      this.selected = false,
      this.hasError = false,
      required this.onChange})
      : super(key: key);

  @override
  State<PmgCheckBox> createState() => _PmgCheckBoxState();
}

class _PmgCheckBoxState extends State<PmgCheckBox> {
  late bool _selected;
  late PmgCheckBoxState _state;

  @override
  void initState() {
    _selected = widget.selected;
    _state =
        buildCheckBoxState(widget.active, widget.selected, widget.hasError);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        if (!widget.active) {
          return;
        }
        _selected = !_selected;
        _state = buildCheckBoxState(widget.active, _selected, widget.hasError);
        widget.onChange(_selected);
      }),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
              color: _state.checkBoxColor,
              borderRadius: PmgRadius.medium,
              border: Border.fromBorderSide(
                  BorderSide(width: 2, color: _state.checkBoxOutlineColor))),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Visibility(
              visible: _selected,
              child: PmgIcon(
                PmgIcons.check,
                size: 12,
                color: setCheckColor(widget.active),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
