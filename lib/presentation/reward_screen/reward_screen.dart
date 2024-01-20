import 'bloc/reward_bloc.dart';import 'models/reward_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/presentation/event_page/event_page.dart';import 'package:clean_egypt/widgets/custom_bottom_bar.dart';import 'package:clean_egypt/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class RewardScreen extends StatelessWidget {RewardScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<RewardBloc>(create: (context) => RewardBloc(RewardState(rewardModelObj: RewardModel()))..add(RewardInitialEvent()), child: RewardScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<RewardBloc, RewardState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildPointSection(context), SizedBox(height: 53.v), _buildSeventyFiveSection(context), SizedBox(height: 11.v), Text("msg_more_point_more".tr, style: CustomTextStyles.titleSmallGray50001), SizedBox(height: 36.v), CustomOutlinedButton(text: "lbl_view_coupon".tr, margin: EdgeInsets.only(left: 24.h, right: 26.h), buttonStyle: CustomButtonStyles.outlinePrimary, buttonTextStyle: CustomTextStyles.titleLargeGray10001, onPressed: () {onTapViewCoupon(context);}), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBarSection(context)));}); } 
/// Section Widget
Widget _buildPointSection(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 73.h, vertical: 23.v), decoration: AppDecoration.gradientYellowToYellow.copyWith(borderRadius: BorderRadiusStyle.customBorderBL60), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 20.v), Align(alignment: Alignment.centerRight, child: SizedBox(height: 163.v, width: 230.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Text("lbl_lionel_messi".tr, style: CustomTextStyles.headlineMediumWhiteA70001)), Align(alignment: Alignment.bottomCenter, child: Text("lbl_4875".tr, style: CustomTextStyles.poppinsWhiteA70001))]))), Text("lbl_point".tr, style: CustomTextStyles.headlineSmallWhiteA70001)])); } 
/// Section Widget
Widget _buildSeventyFiveSection(BuildContext context) { return Container(margin: EdgeInsets.only(left: 26.h, right: 23.h), padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 20.v), decoration: AppDecoration.fillOrange.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(left: 15.h, bottom: 3.v), child: Text("lbl_you_have".tr, style: CustomTextStyles.titleLargeBlack900_1)), CustomImageView(imagePath: ImageConstant.imgTelevisionTeal900, height: 26.v, width: 39.h, margin: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 3.v)), Padding(padding: EdgeInsets.only(left: 12.h, top: 2.v), child: Text("lbl_15_reward".tr, style: CustomTextStyles.titleLargeBlack900_1))])); } 
/// Section Widget
Widget _buildBottomBarSection(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Thumbsup: return AppRoutes.eventPage; case BottomBarEnum.Linkedinwhitea70001: return "/"; case BottomBarEnum.Contrastwhitea70001: return "/"; case BottomBarEnum.Lockwhitea70001: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.eventPage: return EventPage(); default: return DefaultWidget();} } 
/// Navigates to the couponScreen when the action is triggered.
onTapViewCoupon(BuildContext context) { NavigatorService.pushNamed(AppRoutes.couponScreen, ); } 
 }
