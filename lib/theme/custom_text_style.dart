import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeComicSansMSBluegray60001 =>
      theme.textTheme.bodyLarge!.comicSansMS.copyWith(
        color: appTheme.blueGray60001,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get bodyMediumBlack90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray600.withOpacity(0.8),
      );
  static get bodyMediumBluegray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray9000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.5),
        fontSize: 15.fSize,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray50002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50002,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray60015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001.withOpacity(0.61),
      );
  static get bodyMediumGray7000113 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001.withOpacity(0.61),
        fontSize: 13.fSize,
      );
  static get bodyMediumGreenA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.greenA200,
        fontSize: 15.fSize,
      );
  static get bodyMediumInterGray50002 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray50002,
        fontSize: 15.fSize,
      );
  static get bodyMediumTeal80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal80001,
        fontSize: 15.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.5),
      );
  static get bodySmallComicSansMSWhiteA70001 =>
      theme.textTheme.bodySmall!.comicSansMS.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 11.fSize,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get bodySmallWhiteA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  // Headline text style
  static get headlineMediumMedium => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumWhiteA70001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlack900Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallWhiteA70001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
      );
  static get labelLargeBlack90013 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get labelLargeBlack900SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900SemiBold13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.3),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBluegray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray60001,
      );
  static get labelLargeBluegray60001SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray60001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray90001SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001.withOpacity(0.61),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray70001SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray70001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001.withOpacity(0.61),
      );
  static get labelLargeManropeBlack900 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.black900.withOpacity(0.3),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.8),
        fontSize: 13.fSize,
      );
  static get labelLargePrimarySemiBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get labelLargeWhiteA70001SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumManrope =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumTeal80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal80001,
      );
  // Poppins text style
  static get poppinsWhiteA70001 => TextStyle(
        color: appTheme.whiteA70001,
        fontSize: 90.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack90022 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
      );
  static get titleLargeBlack90022_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
      );
  static get titleLargeBlack900Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack900Medium_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack900Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBluegray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray90001Medium =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray10001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray10001,
      );
  static get titleLargeGreen400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeLightgreen600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightGreen600,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900Medium_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleMediumBluegray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumGray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray10001,
        fontSize: 18.fSize,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGreen400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGreen400Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumManropeBlack900 =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumManropeBlue900 =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.blue900,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumManropeTeal80001 =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.teal80001,
      );
  static get titleMediumManropeTeal80001ExtraBold =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.teal80001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumManropeTeal80001ExtraBold_1 =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.teal80001,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumTeal80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal80001,
      );
  static get titleMediumTeal8000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal80001,
        fontSize: 18.fSize,
      );
  static get titleMediumTeal8000118_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal80001,
        fontSize: 18.fSize,
      );
  static get titleMediumTeal80001Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal80001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleMediumWhiteA7000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA70001Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w500,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900SemiBold14 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900SemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.65),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40001.withOpacity(0.9),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.5),
      );
  static get titleSmallCairoGreenA200 =>
      theme.textTheme.titleSmall!.cairo.copyWith(
        color: appTheme.greenA200,
      );
  static get titleSmallGray10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray10001,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleSmallGray900b5 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900B5,
      );
  static get titleSmallManropeBlack900 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallManropeTeal80001 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.teal80001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallManropeTeal80001ExtraBold =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.teal80001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallManropeTeal80001ExtraBold_1 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.teal80001,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallTeal80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal80001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallTeal8000114 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal80001,
        fontSize: 14.fSize,
      );
  static get titleSmallTeal80001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal80001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallTeal80001SemiBold14 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal80001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleSmallYellowA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellowA400,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get comicSansMS {
    return copyWith(
      fontFamily: 'Comic Sans MS',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get cairo {
    return copyWith(
      fontFamily: 'Cairo',
    );
  }
}
