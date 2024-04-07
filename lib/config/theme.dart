import 'package:bmi_calculator_release/config/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
        background: LBGColor,
        primary: LPrimaryColor,
        onBackground: LFontColor,
        primaryContainer: LDivColor,
        onPrimaryContainer: LFontColor,
        onSecondaryContainer: LLabelColor));
var darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
        background: DBGColor,
        primary: DPrimaryColor,
        onBackground: DFontColor,
        primaryContainer: DDivColor,
        onPrimaryContainer: DFontColor,
        onSecondaryContainer: DLabelColor));
