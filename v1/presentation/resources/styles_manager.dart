import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

// This file is used to manage the styles of the application such as text styles, colors, etc.
TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color, {
  double? letterSpacing,
}) {
  return TextStyle(
    color: color,
    fontWeight: fontWeight,
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    letterSpacing: letterSpacing,
  );
}

TextStyle getRegularTextStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
  double? letterSpacing,
}) => _getTextStyle(fontSize, FontWeightManager.regular, color, letterSpacing: letterSpacing);

TextStyle getBoldTextStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
  double? letterSpacing,
}) => _getTextStyle(fontSize, FontWeightManager.bold, color, letterSpacing: letterSpacing);
