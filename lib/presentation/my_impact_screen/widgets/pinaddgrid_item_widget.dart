import '../models/pinaddgrid_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PinaddgridItemWidget extends StatelessWidget {
  PinaddgridItemWidget(
    this.pinaddgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PinaddgridItemModel pinaddgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 48.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.fillGray50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: pinaddgridItemModelObj?.cartImage,
              height: 27.v,
              width: 24.h,
              margin: EdgeInsets.only(left: 9.h),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                pinaddgridItemModelObj.textSeven!,
                style: CustomTextStyles.labelLargeBlack900SemiBold,
              ),
            ),
            SizedBox(height: 5.v),
            Text(
              pinaddgridItemModelObj.textPinAdd!,
              style: theme.textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
