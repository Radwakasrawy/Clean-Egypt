import 'bloc/confirmation_bloc.dart';
import 'models/confirmation_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmationBloc>(
      create: (context) => ConfirmationBloc(ConfirmationState(
        confirmationModelObj: ConfirmationModel(),
      ))
        ..add(ConfirmationInitialEvent()),
      child: ConfirmationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfirmationBloc, ConfirmationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.secondaryContainer,
            body: Container(
              height: 817.v,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 11.v),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img5,
                    height: 108.adaptSize,
                    width: 108.adaptSize,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      left: 68.h,
                      top: 195.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img4,
                    height: 259.v,
                    width: 225.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img5,
                    height: 210.v,
                    width: 182.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 111.v),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 269.v),
                      child: SizedBox(
                        child: Divider(
                          endIndent: 61.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 322.v),
                      child: SizedBox(
                        child: Divider(
                          endIndent: 55.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 138.h,
                        right: 127.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 117.adaptSize,
                            width: 117.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 31.h,
                              vertical: 39.v,
                            ),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder58,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 39.v,
                              width: 54.h,
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox(height: 22.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_logged_in".tr,
                              style:
                                  CustomTextStyles.headlineSmallBlack900Regular,
                            ),
                          ),
                        ],
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
}
