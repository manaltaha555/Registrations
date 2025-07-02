import 'package:flutter/material.dart';
import 'package:registration/view/components/app_color.dart';

TextFormField buildTextFormField({
  required String hint,
  required String? Function(String?) validator,
  var suffixIcon,
  TextInputType keyboardType = TextInputType.text,
  bool isObsecure = false,
  required TextEditingController controller,
}) {
  return TextFormField(
    keyboardType: keyboardType,
    validator: validator,
    controller: controller,
    obscureText: isObsecure,
    style: TextStyle(
      fontSize: 14,
      color:AppColor.title,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      filled: true,
      fillColor: AppColor.fillColor,
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColor.subtitle,
        fontFamily: 'Inter',
      ),
      errorStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColor.border,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColor.border,
          width: 1,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColor.border,
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColor.border,
          width: 1,
        ),
      ),
      suffixIcon: suffixIcon,
    ),
  );
}
