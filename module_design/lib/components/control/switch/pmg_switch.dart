import 'package:flutter/material.dart';

import '../../../styles/pmg_radius.dart';
import 'switch_config.dart';

class PmgSwitch extends StatefulWidget {
  final bool disabled;
  final bool value;
  final Function(bool) onSwitch;
  const PmgSwitch({
    Key? key,
    required this.onSwitch,
    required this.value,
    this.disabled = false,
  }) : super(key: key);

  @override
  State<PmgSwitch> createState() => _PmgSwitchState();
}

class _PmgSwitchState extends State<PmgSwitch> {
  late bool _active;

  @override
  void initState() {
    _active = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _state = buildSwitchState(_active, widget.disabled);
    return GestureDetector(
      onTap: () => setState(() {
        _active = !_active;
        widget.onSwitch(_active);
      }),
      child: SizedBox(
        height: 22,
        width: 40,
        child: Material(
            borderRadius: PmgRadius.pill,
            color: _state.backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 100),
                alignment:
                    _active ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      color: _state.switchColor,
                      shape: BoxShape.circle),
                ),
              ),
            )),
      ),
    );
  }
}
