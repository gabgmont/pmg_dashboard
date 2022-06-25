import 'package:flutter/material.dart';
import 'package:module_design/components/control/radio/radio_config.dart';

class PmgRadio extends StatefulWidget {
  final bool active;
  final bool selected;
  final bool hasError;
  final EdgeInsets? padding;
  final VoidCallback onTap;
  const PmgRadio({
    Key? key,
    this.active = true,
    this.selected = false,
    this.hasError = false,
    this.padding,
    required this.onTap,
  }) : super(key: key);

  @override
  State<PmgRadio> createState() => _PmgRadioState();
}

class _PmgRadioState extends State<PmgRadio> {
  late PmgRadioState _state;

  @override
  Widget build(BuildContext context) {
    _state = buildRadioState(widget.active, widget.selected, widget.hasError);

    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: widget.padding ?? const EdgeInsets.all(6),
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
              color: _state.radioColor,
              border: Border.fromBorderSide(BorderSide(
                width: _state.borderWidth,
                color: _state.radioOutlineColor,
              )),
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}
