import '../models/welcomemessage_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomemessageItemWidget extends StatelessWidget {
  WelcomemessageItemWidget(
    this.welcomemessageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WelcomemessageItemModel welcomemessageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 31.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  welcomemessageItemModelObj.welcomeText!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  welcomemessageItemModelObj.unlockText!,
                  style: CustomTextStyles.bodySmallBlack90011,
                ),
                SizedBox(height: 5.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionPrimary19x19,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                      margin: EdgeInsets.only(bottom: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        welcomemessageItemModelObj.discountText!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            height: 45.v,
            text: "lbl_copy_code".tr,
            buttonStyle: CustomButtonStyles.outlineGrayBL15,
            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
          ),
        ],
      ),
    );
  }
}
