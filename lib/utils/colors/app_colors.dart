import 'package:flutter/material.dart';

class AppColors {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;

  static const Color c8DD0DD = Color(0xFF8DD0DD);
  static const Color c1A441D = Color(0xFF1A441D);
  static const Color cC6E5BA = Color(0xFFC6E5BA);
  static const Color c70B458 = Color(0xFF70B458);
  static const Color cD63D3D = Color(0xFFD63D3D);




  static const LinearGradient authContainerGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(
        0xFF69E4F4,
      ),
      Color(
        0xFFB6DCF3,
      ),
      Color(
        0xFFB6DCF3,
      ),
      Color(
        0xFF69E4F4,
      ),
    ],
  );

  static const LinearGradient loginWithGoogleGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.blue,
      Colors.blueAccent,
      Colors.lightBlue,
      Colors.lightBlueAccent,
    ],
  );
}
