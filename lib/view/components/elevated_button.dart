import 'dart:core';

import 'package:flutter/material.dart';

class BuildElevatedButton extends StatelessWidget {
  Widget child;
  VoidCallback onPressed;
  double horizontal;
  double vertical;
  double borderRadius;
  Color color;
  BuildElevatedButton({
    super.key,
    required this.child,
    required this.onPressed,
    required this.color,
    this.horizontal = 80,
    this.borderRadius = 12,
    this.vertical = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: child
    );
  }
}
