import 'package:flutter/material.dart';
import 'package:registration/view/components/app_color.dart';

ElevatedButton buildElevatedButton({
  required String text,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.primary,
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        fontFamily: 'Inter',
        color: AppColor.title,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
