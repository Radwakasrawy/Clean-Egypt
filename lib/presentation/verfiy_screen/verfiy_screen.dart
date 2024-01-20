import 'bloc/verfiy_bloc.dart';import 'models/verfiy_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:clean_egypt/widgets/app_bar/custom_app_bar.dart';import 'package:clean_egypt/widgets/custom_elevated_button.dart';import 'package:clean_egypt/widgets/custom_pin_code_text_field.dart';import 'package:flutter/material.dart';class VerfiyScreen extends StatelessWidget {const VerfiyScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<VerfiyBloc>(create: (context) => VerfiyBloc(VerfiyState(verfiyModelObj: VerfiyModel()))..add(VerfiyInitialEvent()), child: VerfiyScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 18.v), child: Column(children: [Text("lbl_verfiy_code".tr, style: theme.textTheme.titleMedium), SizedBox(height: 23.v), Text("msg_please_enter_the".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 4.v), Text("msg_example_email_com".tr, style: CustomTextStyles.labelLargePrimarySemiBold), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 29.h, right: 41.h), child: BlocSelector<VerfiyBloc, VerfiyState, TextEditingController?>(selector: (state) => state.otpController, builder: (context, otpController) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});})), SizedBox(height: 31.v), Text("msg_didn_t_receive_otp".tr, style: CustomTextStyles.bodyMediumGray7000113), SizedBox(height: 3.v), Text("lbl_resend_code".tr, style: CustomTextStyles.labelLargePrimarySemiBold), Spacer(), SizedBox(height: 42.v), CustomElevatedButton(text: "lbl_verfiy".tr, onPressed: () {onTapVerfiy(context);})])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.fromLTRB(26.h, 8.v, 327.h, 8.v), onTap: () {onTapArrowLeft(context);})); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the completeYourProfileScreen when the action is triggered.
onTapVerfiy(BuildContext context) { NavigatorService.pushNamed(AppRoutes.completeYourProfileScreen, ); } 
 }