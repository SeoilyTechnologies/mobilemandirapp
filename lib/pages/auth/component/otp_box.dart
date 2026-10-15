import 'package:flutter/material.dart';
import '../../../common/values/app_color.dart';

class OtpBox extends StatelessWidget {
  final TextEditingController controller;

  const OtpBox({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.primary, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.border),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
