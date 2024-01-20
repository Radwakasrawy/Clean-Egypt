import '../models/eventlist_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EventlistItemWidget extends StatelessWidget {
  EventlistItemWidget(
    this.eventlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EventlistItemModel eventlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineLightBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL5,
            ),
            child: SizedBox(
              width: 30.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_14".tr,
                      style: CustomTextStyles.titleMediumTeal8000118,
                    ),
                    TextSpan(
                      text: "lbl_feb".tr,
                      style: CustomTextStyles.titleMediumTeal80001,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 157.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "msg_miami_beach_community".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallTeal8000114,
                  ),
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLocation15x15,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "msg_1_ocean_pkwy_wantahg".tr,
                        style: CustomTextStyles.labelLargeBlack900SemiBold_1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
