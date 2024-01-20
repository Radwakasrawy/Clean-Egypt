import 'bloc/forgot_password_successful_bloc.dart';import 'models/forgot_password_successful_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:clean_egypt/widgets/app_bar/custom_app_bar.dart';import 'package:clean_egypt/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class ForgotPasswordSuccessfulScreen extends StatelessWidget {const ForgotPasswordSuccessfulScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ForgotPasswordSuccessfulBloc>(create: (context) => ForgotPasswordSuccessfulBloc(ForgotPasswordSuccessfulState(forgotPasswordSuccessfulModelObj: ForgotPasswordSuccessfulModel()))..add(ForgotPasswordSuccessfulInitialEvent()), child: ForgotPasswordSuccessfulScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<ForgotPasswordSuccessfulBloc, ForgotPasswordSuccessfulState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 61.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 42.v), CustomImageView(imagePath: ImageConstant.imgLockKey, height: 134.v, width: 148.h), SizedBox(height: 58.v), Container(width: 327.h, margin: EdgeInsets.symmetric(horizontal: 7.h), child: Text("msg_congratulations_you_ve".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineMediumMedium)), Spacer(), CustomElevatedButton(text: "lbl_log_in_now".tr, onPressed: () {onTapLogInNow(context);})]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.fromLTRB(26.h, 8.v, 327.h, 8.v), onTap: () {onTapArrowLeft(context);})); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the logInScreen when the action is triggered.
onTapLogInNow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.logInScreen, ); } 
 }
