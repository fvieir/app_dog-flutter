import 'package:flutter/material.dart';

class CuidapetTextFormField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final ValueNotifier<bool> _obscureTextVN;

  CuidapetTextFormField({
    super.key,
    required this.label,
    this.obscureText = false,
  }) : _obscureTextVN = ValueNotifier<bool>(obscureText);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextVN,
      builder: (_, obscureTextVNValue, __) => TextFormField(
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
