import 'bloc/profile_bloc.dart';import 'models/profile_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/presentation/event_page/event_page.dart';import 'package:clean_egypt/widgets/app_bar/appbar_subtitle_two.dart';import 'package:clean_egypt/widgets/app_bar/custom_app_bar.dart';import 'package:clean_egypt/widgets/custom_bottom_bar.dart';import 'package:clean_egypt/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:clean_egypt/presentation/logout_bottomsheet/logout_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {ProfileScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<ProfileBloc>(create: (context) => ProfileBloc(ProfileState(profileModelObj: ProfileModel()))..add(ProfileInitialEvent()), child: ProfileScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 18.v), child: Column(children: [SizedBox(height: 100.v, width: 98.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(height: 100.v, width: 98.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(50.h)))), Align(alignment: Alignment.center, child: SizedBox(height: 100.v, width: 98.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgProfilePhoto, height: 100.v, width: 98.h, radius: BorderRadius.circular(49.h), alignment: Alignment.center), CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineWhiteA, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgEdit))])))])), SizedBox(height: 13.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 96.h), child: Text("lbl_lionel_messi".tr, style: CustomTextStyles.titleLargeBlack900Regular))), SizedBox(height: 23.v), _buildLockRow(context), SizedBox(height: 15.v), Divider(), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 6.h), child: _buildSearchRow(context, searchImage: ImageConstant.imgThumbsUpPrimary, settingsText: "lbl_refer_earn".tr)), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), _buildClockRow(context), SizedBox(height: 12.v), Divider(), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 6.h), child: _buildSearchRow(context, searchImage: ImageConstant.imgSearch, settingsText: "lbl_settings".tr)), SizedBox(height: 13.v), Divider(), SizedBox(height: 16.v), _buildProfileRow(context), SizedBox(height: 13.v), Divider(), SizedBox(height: 16.v), _buildLocationRow(context), SizedBox(height: 13.v), Divider(), SizedBox(height: 26.v), SizedBox(height: 31.v, width: 122.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 15.h, bottom: 2.v), child: Text("lbl_log_out".tr, style: CustomTextStyles.titleSmallBlack900SemiBold_1))), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapEightyOne(context);}, child: Container(height: 31.v, width: 122.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v), decoration: AppDecoration.fillBluegray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: CustomImageView(imagePath: ImageConstant.imgQrcode, height: 20.v, width: 22.h, alignment: Alignment.topRight))))])), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_profile".tr)); } 
/// Section Widget
Widget _buildLockRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 5.h, right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLockPrimary, height: 23.v, width: 18.h), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("lbl_your_profile".tr, style: theme.textTheme.bodyLarge)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.v, width: 10.h, margin: EdgeInsets.only(top: 5.v, bottom: 4.v))])); } 
/// Section Widget
Widget _buildClockRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 3.h, right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgClockPrimary, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 4.v)), Padding(padding: EdgeInsets.only(left: 12.h, top: 2.v), child: Text("lbl_my_impact".tr, style: theme.textTheme.bodyLarge)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.v, width: 10.h, margin: EdgeInsets.symmetric(vertical: 6.v))])); } 
/// Section Widget
Widget _buildProfileRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h, right: 7.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgProfile, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 4.v)), Padding(padding: EdgeInsets.only(left: 13.h), child: Text("lbl_help_center".tr, style: theme.textTheme.bodyLarge)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightBlueGray600, height: 16.v, width: 10.h, margin: EdgeInsets.only(top: 3.v, bottom: 6.v))])); } 
/// Section Widget
Widget _buildLocationRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h, right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgLocation, height: 21.v, width: 19.h, margin: EdgeInsets.only(bottom: 3.v)), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("lbl_privacy_policy".tr, style: theme.textTheme.bodyLarge)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.v, width: 10.h, margin: EdgeInsets.only(top: 3.v, bottom: 6.v))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
/// Common widget
Widget _buildSearchRow(BuildContext context, {required String searchImage, required String settingsText, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: searchImage, height: 21.v, width: 22.h, margin: EdgeInsets.only(bottom: 4.v)), Padding(padding: EdgeInsets.only(left: 12.h), child: Text(settingsText, style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.blueGray90001))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.v, width: 10.h, margin: EdgeInsets.only(top: 3.v, bottom: 6.v))]); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Thumbsup: return AppRoutes.eventPage; case BottomBarEnum.Linkedinwhitea70001: return "/"; case BottomBarEnum.Contrastwhitea70001: return "/"; case BottomBarEnum.Lockwhitea70001: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.eventPage: return EventPage(); default: return DefaultWidget();} } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [LogoutBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapEightyOne(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>LogoutBottomsheet.builder(context),isScrollControlled: true); } 
 }