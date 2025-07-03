import 'package:flutter/material.dart';
import 'package:registration/view/components/app_color.dart';

ElevatedButton buildElevatedButton({
  required String text,
  required VoidCallback onPressed,
  double? horizontal = 80,
  double? vertical = 16,
  double? borderRadius = 12
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.primary,
      padding: EdgeInsets.symmetric(horizontal: horizontal!, vertical: vertical!),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius!)),
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
