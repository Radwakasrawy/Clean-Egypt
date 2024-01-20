import 'bloc/help_contact_us_bloc.dart';
import 'models/help_contact_us_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HelpContactUsPage extends StatefulWidget {
  const HelpContactUsPage({Key? key})
      : super(
          key: key,
        );

  @override
  HelpContactUsPageState createState() => HelpContactUsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HelpContactUsBloc>(
      create: (context) => HelpContactUsBloc(HelpContactUsState(
        helpContactUsModelObj: HelpContactUsModel(),
      ))
        ..add(HelpContactUsInitialEvent()),
      child: HelpContactUsPage(),
    );
  }
}

class HelpContactUsPageState extends State<HelpContactUsPage>
    with AutomaticKeepAliveClientMixin<HelpContactUsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildCustomerServiceStack(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCustomerServiceStack(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 22.h,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 56.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "lbl_all".tr,
                      style: CustomTextStyles.titleMediumWhiteA70001Medium,
                    ),
                  ),
                ),
                BlocSelector<HelpContactUsBloc, HelpContactUsState,
                    HelpContactUsModel?>(
                  selector: (state) => state.helpContactUsModelObj,
                  builder: (context, helpContactUsModelObj) {
                    return CustomDropDown(
                      width: 343.h,
                      hintText: "msg_customer_service".tr,
                      alignment: Alignment.center,
                      items: helpContactUsModelObj?.dropdownItemList ?? [],
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(19.h, 16.v, 22.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgContrastPrimary,
                          height: 24.v,
                          width: 23.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 56.v,
                      ),
                      onChanged: (value) {
                        context
                            .read<HelpContactUsBloc>()
                            .add(ChangeDropDownEvent(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.outlineGray300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        right: 8.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVolume,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 22.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "lbl_whatsapp".tr,
                              style: CustomTextStyles.bodyLargeBlack900,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 8.v,
                            width: 13.h,
                            margin: EdgeInsets.only(
                              top: 8.v,
                              bottom: 10.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Divider(),
                  ],
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 34.h),
                  child: Row(
                    children: [
                      Container(
                        height: 6.adaptSize,
                        width: 6.adaptSize,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 4.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "lbl_20_1000000000".tr,
                          style: CustomTextStyles.bodySmallGray600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          BlocSelector<HelpContactUsBloc, HelpContactUsState,
              HelpContactUsModel?>(
            selector: (state) => state.helpContactUsModelObj,
            builder: (context, helpContactUsModelObj) {
              return CustomDropDown(
                hintText: "lbl_website".tr,
                items: helpContactUsModelObj?.dropdownItemList1 ?? [],
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(19.h, 14.v, 22.h, 14.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGlobe,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                onChanged: (value) {
                  context
                      .read<HelpContactUsBloc>()
                      .add(ChangeDropDown1Event(value: value));
                },
              );
            },
          ),
          SizedBox(height: 8.v),
          BlocSelector<HelpContactUsBloc, HelpContactUsState,
              HelpContactUsModel?>(
            selector: (state) => state.helpContactUsModelObj,
            builder: (context, helpContactUsModelObj) {
              return CustomDropDown(
                hintText: "lbl_facebook".tr,
                items: helpContactUsModelObj?.dropdownItemList2 ?? [],
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(19.h, 15.v, 22.h, 15.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                onChanged: (value) {
                  context
                      .read<HelpContactUsBloc>()
                      .add(ChangeDropDown2Event(value: value));
                },
              );
            },
          ),
          SizedBox(height: 8.v),
          BlocSelector<HelpContactUsBloc, HelpContactUsState,
              HelpContactUsModel?>(
            selector: (state) => state.helpContactUsModelObj,
            builder: (context, helpContactUsModelObj) {
              return CustomDropDown(
                hintText: "lbl_twitter_x".tr,
                items: helpContactUsModelObj?.dropdownItemList3 ?? [],
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(18.h, 15.v, 22.h, 15.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAirplane,
                    height: 21.v,
                    width: 24.h,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                onChanged: (value) {
                  context
                      .read<HelpContactUsBloc>()
                      .add(ChangeDropDown3Event(value: value));
                },
              );
            },
          ),
          SizedBox(height: 8.v),
          BlocSelector<HelpContactUsBloc, HelpContactUsState,
              HelpContactUsModel?>(
            selector: (state) => state.helpContactUsModelObj,
            builder: (context, helpContactUsModelObj) {
              return CustomDropDown(
                hintText: "lbl_instagram".tr,
                items: helpContactUsModelObj?.dropdownItemList4 ?? [],
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(19.h, 14.v, 22.h, 14.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgInfo,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                onChanged: (value) {
                  context
                      .read<HelpContactUsBloc>()
                      .add(ChangeDropDown4Event(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
