import '../models/userprofile1_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 12.v,
            bottom: 11.v,
          ),
          child: Text(
            userprofile1ItemModelObj.four!,
            style: CustomTextStyles.bodySmallInterBlack900,
          ),
        ),
        CustomImageView(
          imagePath: userprofile1ItemModelObj?.userImage,
          height: 39.adaptSize,
          width: 39.adaptSize,
          radius: BorderRadius.circular(
            19.h,
          ),
          margin: EdgeInsets.only(left: 12.h),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 10.v,
            bottom: 8.v,
          ),
          child: Text(
            userprofile1ItemModelObj.loganNash!,
            style: CustomTextStyles.labelLargeBlack900SemiBold13,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Text(
            userprofile1ItemModelObj.pointCounter!,
            style: CustomTextStyles.labelLargeBlack900,
          ),
        ),
      ],
    );
  }
}
