import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Logo ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "First".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.firstScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sceond".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sceondScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Third".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thirdScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Log in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Confirmation".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.confirmationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Send Code".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sendCodeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reset Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot password successful".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordSuccessfulScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create Account".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Verfiy".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.verfiyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Complete Your Profile".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.completeYourProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Manually Location".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addManuallyLocationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Location Access".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.locationAccessScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Map pin".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.mapPinScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Full Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fullScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Scanner".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.scannerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Complain".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.complainScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Uploaded".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.uploadedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Update Profile".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.updateProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Refer & Earn".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.referEarnScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "View earnings".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.viewEarningsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "MY Impact".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myImpactScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Change Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.changePasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Delete Account".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deleteAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification Settings".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Help - FAQ - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.helpFaqTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Privacy Policy".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.privacyPolicyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reward".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.rewardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Coupon".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.couponScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Event - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.eventContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detail Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.detailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Remove event".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.removeEventScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Favorite Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.favoriteScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Rank".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.rankScreen),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
