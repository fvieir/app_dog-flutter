import 'package:flutter/material.dart';

class CuidapetTextFormField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final ValueNotifier<bool> _obscureTextVN;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  CuidapetTextFormField({
    super.key,
    required this.label,
    this.obscureText = false,
    this.controller,
    this.validator,
  }) : _obscureTextVN = ValueNotifier<bool>(obscureText);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextVN,
      builder: (_, obscureTextVNValue, __) => TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureTextVNValue,
        decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(color: Colors.black),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: obscureText
              ? IconButton(
                  onPressed: () {
                    _obscureTextVN.value = !obscureTextVNValue;
                  },
                  icon: Icon(obscureTextVNValue ? Icons.lock : Icons.lock_open),
                )
              : null,
        ),
      ),
    );
  }
}
