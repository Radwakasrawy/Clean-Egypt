import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTrailingButton extends StatelessWidget {
  AppbarTrailingButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 35.v,
          width: 58.h,
          text: "lbl_2_new".tr,
          buttonStyle: CustomButtonStyles.fillGreenA,
          buttonTextStyle: CustomTextStyles.labelLargeWhiteA70001,
        ),
      ),
    );
  }
}
