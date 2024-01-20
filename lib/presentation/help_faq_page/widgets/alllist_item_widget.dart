import '../models/alllist_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlllistItemWidget extends StatelessWidget {
  AlllistItemWidget(
    this.alllistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AlllistItemModel alllistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52.h,
      margin: EdgeInsets.only(bottom: 1.v),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Text(
        alllistItemModelObj.group!,
        style: CustomTextStyles.titleMediumWhiteA70001Medium,
      ),
    );
  }
}
