import '../models/favoriteevents_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class FavoriteeventsItemWidget extends StatelessWidget {
  FavoriteeventsItemWidget(
    this.favoriteeventsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FavoriteeventsItemModel favoriteeventsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 0.33,
        dragDismissible: false,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 19.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.gray40001,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(5.h),
              ),
            ),
            child: SizedBox(
              width: 39.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_2".tr,
                      style:
                          CustomTextStyles.titleMediumManropeTeal80001ExtraBold,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_feb2".tr,
                      style: CustomTextStyles.titleMediumManropeTeal80001,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      child: Container(
        decoration: AppDecoration.outlineLightblue10033.copyWith(
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
                width: 31.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_102".tr,
                        style: CustomTextStyles.titleMediumTeal8000118,
                      ),
                      TextSpan(
                        text: "lbl_jan".tr,
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
                      favoriteeventsItemModelObj.miamiBeachCommunity!,
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
                          favoriteeventsItemModelObj.oceanPkwyWantahg!,
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
      ),
    );
  }
}
