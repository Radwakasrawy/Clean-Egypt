import '../models/sendcode_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SendcodeItemWidget extends StatelessWidget {
  SendcodeItemWidget(
    this.sendcodeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SendcodeItemModel sendcodeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 297.h,
      child: Text(
        sendcodeItemModelObj.selectWhichContact!,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: CustomTextStyles.bodyMediumGray700,
      ),
    );
  }
}
