import '../models/todaysection_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodaysectionItemWidget extends StatelessWidget {
  TodaysectionItemWidget(
    this.todaysectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TodaysectionItemModel todaysectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 23.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 24.v,
            ),
            child: CustomIconButton(
              height: 55.adaptSize,
              width: 55.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillGreenTL27,
              child: CustomImageView(
                imagePath: ImageConstant.imgCamera,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_picture_success".tr,
                        style: CustomTextStyles.titleMediumBlack900Medium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Text(
                          "lbl_1h".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  SizedBox(
                    width: 272.h,
                    child: Text(
                      "msg_congratulations2".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
