import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA70001,
                  borderRadius: BorderRadius.circular(20.h),
                  border: Border.all(
                    color: appTheme.blueGray10001,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal800,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.6),
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGreenTL27 => BoxDecoration(
        color: appTheme.green100,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red10001,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.blueGray600,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.whiteA70001,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineWhiteATL16 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.whiteA70001,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineTeal => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(
          color: appTheme.teal80001,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillTealTL10 => BoxDecoration(
        color: appTheme.teal80001,
        borderRadius: BorderRadius.circular(10.h),
      );
}
