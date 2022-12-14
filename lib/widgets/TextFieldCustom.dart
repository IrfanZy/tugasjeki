import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData? icon;
  final bool filled, readOnly;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final List<TextInputFormatter> inputFormatters;

  const TextFieldCustom({
    super.key,
    required this.controller,
    required this.hint,
    this.icon,
    this.filled = false,
    this.readOnly = false,
    this.focusNode,
    this.keyboardType,
    this.inputFormatters = const [],
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      readOnly: readOnly,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
          filled: filled,
          fillColor: filled ? Colors.white : Colors.transparent,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff3FBDF1),
              width: 3,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff3FBDF1),
              width: 3,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  size: 30,
                )
              : null,
          hintText: hint,
          hintStyle: const TextStyle(fontWeight: FontWeight.w500)),
    );
  }
}
