import 'package:flutter/material.dart';

class PizzeriaStyle {
  static const TextStyle headerTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.brown,
  );

  static const TextStyle subHeaderTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.brown,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.black87,
  );

  static const TextStyle baseTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.black87,
  );

  static final TextStyle errorTextStyle = baseTextStyle.copyWith(
    color: Colors.red,
  );


  static const Color primaryColor = Colors.red;
  static const Color secondaryColor = Colors.yellow;
  static const Color backgroundColor = Colors.white;

  static final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );
}