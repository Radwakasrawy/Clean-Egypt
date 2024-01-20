import '../models/eventcardlist_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EventcardlistItemWidget extends StatelessWidget {
  EventcardlistItemWidget(
    this.eventcardlistItemModelObj, {
    Key? key,
    this.onTapSeeMoreBtn,
  }) : super(
          key: key,
        );

  EventcardlistItemModel eventcardlistItemModelObj;

  VoidCallback? onTapSeeMoreBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: eventcardlistItemModelObj?.image,
            height: 139.v,
            width: 327.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      eventcardlistItemModelObj.title!,
                      style: CustomTextStyles.titleSmallTeal80001,
                    ),
                    SizedBox(height: 15.v),
                    SizedBox(
                      height: 61.v,
                      width: 176.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp14x14,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 2.v,
                                    bottom: 4.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    eventcardlistItemModelObj.dateText!,
                                    style: CustomTextStyles
                                        .titleSmallBlack900SemiBold14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: () {
                                onTapSeeMoreBtn!.call();
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 17.v),
                                padding: EdgeInsets.symmetric(vertical: 9.v),
                                decoration:
                                    AppDecoration.fillWhiteA70001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      eventcardlistItemModelObj.seeMoreText!,
                                      style: CustomTextStyles
                                          .titleMediumTeal80001Medium,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgArrow1,
                                      height: 1.v,
                                      width: 14.h,
                                      radius: BorderRadius.circular(
                                        1.h,
                                      ),
                                      margin: EdgeInsets.only(
                                        left: 14.h,
                                        top: 12.v,
                                        bottom: 10.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 18.v,
                    bottom: 13.v,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.only(right: 2.h),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: appTheme.gray20001,
                              width: 6.h,
                            ),
                            borderRadius: BorderRadiusStyle.roundedBorder25,
                          ),
                          child: Container(
                            height: 46.adaptSize,
                            width: 46.adaptSize,
                            decoration: AppDecoration.outlineGray20001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder25,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 46.adaptSize,
                                    width: 46.adaptSize,
                                    child: CircularProgressIndicator(
                                      value: 0.5,
                                      strokeWidth: 6.h,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    eventcardlistItemModelObj.progressText!,
                                    style: CustomTextStyles
                                        .titleSmallTeal80001SemiBold14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        eventcardlistItemModelObj.spotsLeftText!,
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
