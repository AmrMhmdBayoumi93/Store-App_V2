import 'package:flutter/material.dart';

void showSnackBar(
  BuildContext context,
  String message, {
  TextStyle? style,
  Duration duration = const Duration(seconds: 3), // default duration
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: style ?? const TextStyle(), // Apply style if provided
      ),
      duration: duration, // Customize SnackBar display duration
    ),
  );
}
