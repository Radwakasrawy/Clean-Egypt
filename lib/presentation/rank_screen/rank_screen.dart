import '../rank_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/rank_bloc.dart';
import 'models/rank_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/presentation/event_page/event_page.dart';
import 'package:clean_egypt/widgets/app_bar/appbar_title.dart';
import 'package:clean_egypt/widgets/app_bar/custom_app_bar.dart';
import 'package:clean_egypt/widgets/custom_bottom_bar.dart';
import 'package:clean_egypt/widgets/custom_drop_down.dart';
import 'package:clean_egypt/widgets/custom_elevated_button.dart';
import 'package:clean_egypt/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class RankScreen extends StatelessWidget {
  RankScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<RankBloc>(
      create: (context) => RankBloc(RankState(
        rankModelObj: RankModel(),
      ))
        ..add(RankInitialEvent()),
      child: RankScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildRankings(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 28.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 43.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BlocSelector<RankBloc, RankState, RankModel?>(
                              selector: (state) => state.rankModelObj,
                              builder: (context, rankModelObj) {
                                return CustomDropDown(
                                  width: 119.h,
                                  hintText: "lbl_this_week".tr,
                                  items: rankModelObj?.dropdownItemList ?? [],
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 19.h,
                                    vertical: 5.v,
                                  ),
                                  onChanged: (value) {
                                    context
                                        .read<RankBloc>()
                                        .add(ChangeDropDownEvent(value: value));
                                  },
                                );
                              },
                            ),
                            BlocSelector<RankBloc, RankState, RankModel?>(
                              selector: (state) => state.rankModelObj,
                              builder: (context, rankModelObj) {
                                return CustomDropDown(
                                  width: 119.h,
                                  hintText: "lbl_location".tr,
                                  items: rankModelObj?.dropdownItemList1 ?? [],
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 23.h,
                                    vertical: 5.v,
                                  ),
                                  onChanged: (value) {
                                    context.read<RankBloc>().add(
                                        ChangeDropDown1Event(value: value));
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildUserProfile(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRankings(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: AppDecoration.gradientBlueAToDeepPurpleA,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            height: 30.v,
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_rankings".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              right: 25.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 47.v),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        radius: BorderRadius.circular(
                          25.h,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "lbl_sonny_corleone".tr,
                        style: CustomTextStyles.labelLargeWhiteA70001SemiBold,
                      ),
                      Text(
                        "lbl_43093_point".tr,
                        style: CustomTextStyles.bodySmallWhiteA70001,
                      ),
                      SizedBox(height: 4.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 49.v,
                          width: 43.h,
                          margin: EdgeInsets.only(right: 28.h),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 49.v,
                                  width: 43.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.whiteA70001,
                                    borderRadius: BorderRadius.circular(
                                      5.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "lbl_2".tr,
                                  style: theme.textTheme.headlineLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle65x65,
                      height: 65.adaptSize,
                      width: 65.adaptSize,
                      radius: BorderRadius.circular(
                        32.h,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "lbl_vito_corleone".tr,
                      style: CustomTextStyles.labelLargeWhiteA70001SemiBold,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "lbl_53345_point".tr,
                      style: CustomTextStyles.bodySmallWhiteA70001,
                    ),
                    SizedBox(height: 11.v),
                    CustomElevatedButton(
                      height: 68.v,
                      width: 43.h,
                      text: "lbl_1".tr,
                      buttonStyle: CustomButtonStyles.fillWhiteA,
                      buttonTextStyle: theme.textTheme.headlineLarge!,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 47.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle50x50,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        radius: BorderRadius.circular(
                          25.h,
                        ),
                        margin: EdgeInsets.only(left: 21.h),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_fredo_corleone".tr,
                        style: CustomTextStyles.labelLargeWhiteA70001SemiBold,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_29876_point".tr,
                          style: CustomTextStyles.bodySmallWhiteA70001,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Container(
                        height: 45.v,
                        width: 43.h,
                        margin: EdgeInsets.only(left: 26.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomIconButton(
                              height: 40.v,
                              width: 43.h,
                              alignment: Alignment.bottomCenter,
                              child: CustomImageView(),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_3".tr,
                                style: theme.textTheme.headlineLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.h),
      child: BlocSelector<RankBloc, RankState, RankModel?>(
        selector: (state) => state.rankModelObj,
        builder: (context, rankModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount: rankModelObj?.userprofile1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model =
                  rankModelObj?.userprofile1ItemList[index] ??
                      Userprofile1ItemModel();
              return Userprofile1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Thumbsup:
        return AppRoutes.eventPage;
      case BottomBarEnum.Linkedinwhitea70001:
        return "/";
      case BottomBarEnum.Contrastwhitea70001:
        return "/";
      case BottomBarEnum.Lockwhitea70001:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.eventPage:
        return EventPage();
      default:
        return DefaultWidget();
    }
  }
}
