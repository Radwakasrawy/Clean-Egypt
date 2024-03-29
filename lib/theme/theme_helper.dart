import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA70001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.whiteA70001,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.blueGray60001,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray200,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 17.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray70001.withOpacity(0.6),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onError,
          fontSize: 44.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 34.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 30.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 26.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: appTheme.lightGreen600,
          fontSize: 25.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray90001.withOpacity(0.5),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.redA200,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.blueGray40001,
          fontSize: 9.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.8),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF488466),
    primaryContainer: Color(0X991F1F1F),
    secondaryContainer: Color(0XE5488466),

    // Error colors
    errorContainer: Color(0XFF0066FF),
    onError: Color(0XFF6A9881),

    // On colors(text colors)
    onPrimary: Color(0XFF151522),
    onPrimaryContainer: Color(0XFFB4BAC4),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue50 => Color(0XFFDBEAFE);
  Color get blue900 => Color(0XFF0B437E);
  Color get blueA100 => Color(0XFF73A0FA);

  // BlueGray
  Color get blueGray100 => Color(0XFFCBCBCB);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray10002 => Color(0XFFCFCFCF);
  Color get blueGray300 => Color(0XFF84B0C1);
  Color get blueGray400 => Color(0XFF878787);
  Color get blueGray40001 => Color(0XFF888888);
  Color get blueGray500 => Color(0XFF588B71);
  Color get blueGray600 => Color(0XFF457E61);
  Color get blueGray60001 => Color(0XFF478265);
  Color get blueGray60002 => Color(0XFF478264);
  Color get blueGray60003 => Color(0XFF2F7889);
  Color get blueGray700 => Color(0XFF3F7358);
  Color get blueGray800 => Color(0XFF315945);
  Color get blueGray900 => Color(0XFF264535);
  Color get blueGray90001 => Color(0XFF333333);

  // DeepOrange
  Color get deepOrangeA400 => Color(0XFFFF4207);

  // DeepPurple
  Color get deepPurpleA100 => Color(0XFFC28BFA);

  // Gray
  Color get gray100 => Color(0XFFF6F6F6);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray10002 => Color(0XFFEFF6FF);
  Color get gray10003 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFE9E9E9);
  Color get gray20001 => Color(0XFFEBEBEB);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30001 => Color(0XFFE1E1E1);
  Color get gray30002 => Color(0XFFE4E4E4);
  Color get gray30003 => Color(0XFFE0E0E0);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray40001 => Color(0XFFC5C5C5);
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray500 => Color(0XFF999999);
  Color get gray50001 => Color(0XFF93979A);
  Color get gray50002 => Color(0XFF959595);
  Color get gray5001 => Color(0XFFFBFBFB);
  Color get gray5002 => Color(0XFFFAFAFB);
  Color get gray5003 => Color(0XFFFAFAFA);
  Color get gray5004 => Color(0XFFF9F9FB);
  Color get gray5005 => Color(0XFFFCFCFC);
  Color get gray600 => Color(0XFF797979);
  Color get gray60001 => Color(0XFF7E7E7E);
  Color get gray700 => Color(0XFF6B6B6A);
  Color get gray70001 => Color(0XFF636363);
  Color get gray70019 => Color(0X195E5E5E);
  Color get gray900 => Color(0XFF242424);

  // GrayB
  Color get gray900B5 => Color(0XB51E1E1E);

  // Green
  Color get green100 => Color(0XFFCDF8DD);
  Color get green10001 => Color(0XFFBED2C8);
  Color get green400 => Color(0XFF48BC81);
  Color get green50 => Color(0XFFE5F6E8);
  Color get greenA100 => Color(0XFF9BEFC5);
  Color get greenA10001 => Color(0XFF9AEFC4);
  Color get greenA200 => Color(0XFF5BE790);
  Color get greenA400 => Color(0XFF00F35A);

  // Indigo
  Color get indigoA100 => Color(0XFF989AFB);

  // LightBlue
  Color get lightBlue10033 => Color(0X33A5E5FF);

  // LightGreen
  Color get lightGreen600 => Color(0XFF70B74E);

  // Orange
  Color get orange100 => Color(0XFFFFE3BE);
  Color get orange10001 => Color(0XFFFBCE9D);

  // Red
  Color get red100 => Color(0XFFF7DECE);
  Color get red10001 => Color(0XFFF8D2CD);
  Color get red700 => Color(0XFFCC4B3A);
  Color get redA200 => Color(0XFFFA6060);

  // Teal
  Color get teal400 => Color(0XFF24C387);
  Color get teal40001 => Color(0XFF2FCA8F);
  Color get teal50 => Color(0XFFD7FCEC);
  Color get teal5001 => Color(0XFFD7FCED);
  Color get teal800 => Color(0XFF007549);
  Color get teal80001 => Color(0XFF0D713F);
  Color get teal900 => Color(0XFF074526);
  Color get tealA400 => Color(0XFF28DF99);

  // TealAe
  Color get tealA1008e => Color(0X8EACFDE0);

  // White
  Color get whiteA700 => Color(0XFFFEFEFE);
  Color get whiteA70001 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow600 => Color(0XFFFEDA2C);
  Color get yellow800 => Color(0XFFFCAA17);
  Color get yellowA400 => Color(0XFFFFE500);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
