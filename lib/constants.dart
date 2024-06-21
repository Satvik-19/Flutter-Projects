// constants.dart
import 'package:flutter/material.dart';

// Colors
const kPrimaryColor = Color(0xFFE8EDDF);
const kSecondaryColor = Color(0xFFCACFD2);
const kTertiaryColor = Color(0xFFEEEEEE);
const kTextColor = Color(0xFF333333);

// Box Decorations
final kNeumorphicBoxDecoration = BoxDecoration(
  color: kPrimaryColor,
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: [
    BoxShadow(
      color: Colors.white.withOpacity(0.8),
      offset: const Offset(-6, -6),
      blurRadius: 16,
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      offset: const Offset(6, 6),
      blurRadius: 16,
    ),
  ],
);

final kNeumorphicInset = BoxDecoration(
  color: kTertiaryColor,
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: [
    BoxShadow(
      color: Colors.white.withOpacity(0.8),
      offset: const Offset(6, 6),
      blurRadius: 16,
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      offset: const Offset(-6, -6),
      blurRadius: 16,
    ),
  ],
);