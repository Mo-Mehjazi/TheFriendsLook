import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
  final TextInputType inputType;
  final String labelText;
  final Function validator;
  final bool hidden;

  StyledTextField(this.inputType, this.labelText, this.validator, {this.hidden = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hidden,
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(),
        ),
      ),
      validator: validator,
    );
  }
}
