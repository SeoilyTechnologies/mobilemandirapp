import 'package:flutter/material.dart';
import '../../../common/values/app_color.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../../../common/values/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscure;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool enableKeyboard;
  final TextEditingController? controller;

  const CustomTextField({
    required this.hint,
    required this.icon,
    this.obscure = false,
    this.onChanged,
    this.onTap,
    this.enableKeyboard = true, // 👈 default: true (normal typing)
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      onChanged: onChanged,
      onTap: onTap,
      readOnly: !enableKeyboard, // 👈 disables keyboard if false
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: AppColor.hint),
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.border),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
