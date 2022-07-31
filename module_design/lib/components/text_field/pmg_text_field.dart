import 'package:flutter/material.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_design/styles/pmg_colors.dart';
import 'package:module_design/styles/pmg_radius.dart';
import 'package:module_design/styles/pmg_typography.dart';

class PmgTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final String? errorMessage;
  final bool isPassword;
  final bool? enabled;
  final TextInputType? inputType;
  final List<TextInputMask>? inputFormatters;
  final Function(String text)? onChanged;
  const PmgTextField(
      {Key? key,
      required this.controller,
      this.label,
      this.hint,
      this.errorMessage,
      this.inputType,
      this.inputFormatters,
      this.isPassword = false,
      this.onChanged, this.enabled})
      : super(key: key);

  @override
  State<PmgTextField> createState() => _PmgTextFieldState();
}

class _PmgTextFieldState extends State<PmgTextField> {
  late FocusNode _focusNode;
  bool isHovering = false;
  String text = '';

  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var labelColor = _focusNode.hasFocus || text.isNotEmpty
        ? PmgColors.monoBlack
        : PmgColors.neutral;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () => _focusNode.nextFocus(),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        onHover: (value) => setState(() => isHovering = value),
        child: TextFormField(
          enabled: widget.enabled,
          focusNode: _focusNode,
          controller: widget.controller,
          onChanged: (value) {
            setState(() => text = value);
            if (widget.onChanged != null) {
              widget.onChanged!(text);
            }
          },
          cursorColor: PmgColors.neutralDark,
          obscureText: widget.isPassword,
          inputFormatters: widget.inputFormatters,
          decoration: InputDecoration(
            errorText: widget.errorMessage,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            labelStyle: PmgTypography.bodySmall(color: labelColor),
            labelText: widget.label,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: widget.hint,
            hintStyle: PmgTypography.bodyTiny(),
            focusedBorder: OutlineInputBorder(
                borderRadius: PmgRadius.medium,
                borderSide:
                    const BorderSide(color: PmgColors.primary, width: 2)),
            errorBorder: OutlineInputBorder(
                borderRadius: PmgRadius.medium,
                borderSide: BorderSide(
                    color: PmgColors.statusError,
                    width: _focusNode.hasFocus ? 2 : 1)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: PmgRadius.medium,
                borderSide: BorderSide(
                    color: PmgColors.statusError,
                    width: _focusNode.hasFocus ? 2 : 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: PmgRadius.medium,
                borderSide: BorderSide(
                    color: isHovering
                        ? PmgColors.secondaryLight
                        : PmgColors.neutral,
                    width: 1)),
          ),
        ),
      ),
    );
  }
}
