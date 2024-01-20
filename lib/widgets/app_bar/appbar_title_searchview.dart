import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 298.h,
        controller: controller,
        hintText: "lbl_find_your_event".tr,
        hintStyle: CustomTextStyles.bodyMediumGray60015,
      ),
    );
  }
}
