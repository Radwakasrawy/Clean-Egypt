import '../models/userprofile_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userprofileItemModelObj.userName!,
                style: CustomTextStyles.titleSmallGray900b5,
              ),
              SizedBox(height: 4.v),
              Text(
                userprofileItemModelObj.time!,
                style: CustomTextStyles.labelLargeOnPrimaryContainer,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgStar1,
          height: 25.v,
          width: 28.h,
          margin: EdgeInsets.only(
            top: 2.v,
            bottom: 20.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            bottom: 18.v,
          ),
          child: Text(
            userprofileItemModelObj.five!,
            style: CustomTextStyles.titleLargeLightgreen600,
          ),
        ),
      ],
    );
  }
}
