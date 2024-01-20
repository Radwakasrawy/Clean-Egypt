import 'bloc/scanner_bloc.dart';
import 'models/scanner_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ScannerBloc>(
      create: (context) => ScannerBloc(ScannerState(
        scannerModelObj: ScannerModel(),
      ))
        ..add(ScannerInitialEvent()),
      child: ScannerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScannerBloc, ScannerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 141.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 746.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img883ffc048f74f41,
                              height: 527.v,
                              width: 393.h,
                              alignment: Alignment.topCenter,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 70.v,
                                ),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL40,
                                ),
                                child: _buildGarbageRow(context),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIcons8Scanner50,
                              height: 345.v,
                              width: 384.h,
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGarbageRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGarbage3,
            height: 73.v,
            width: 70.h,
            margin: EdgeInsets.only(left: 19.h),
          ),
          Spacer(
            flex: 54,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 23.v,
              bottom: 24.v,
            ),
            child: Text(
              "lbl_garbage2".tr,
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          Spacer(
            flex: 45,
          ),
          CustomElevatedButton(
            height: 38.v,
            width: 95.h,
            text: "lbl_complain".tr,
            margin: EdgeInsets.symmetric(vertical: 18.v),
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001,
          ),
        ],
      ),
    );
  }
}
