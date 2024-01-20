import 'bloc/privacy_policy_bloc.dart';import 'models/privacy_policy_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:clean_egypt/widgets/app_bar/appbar_subtitle_two.dart';import 'package:clean_egypt/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class PrivacyPolicyScreen extends StatelessWidget {const PrivacyPolicyScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<PrivacyPolicyBloc>(create: (context) => PrivacyPolicyBloc(PrivacyPolicyState(privacyPolicyModelObj: PrivacyPolicyModel()))..add(PrivacyPolicyInitialEvent()), child: PrivacyPolicyScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<PrivacyPolicyBloc, PrivacyPolicyState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 16.v), child: Padding(padding: EdgeInsets.only(left: 26.h, right: 41.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_canelation_policy".tr, style: CustomTextStyles.titleMediumPrimary), SizedBox(width: 326.h, child: Text("msg_thank_you_for_using".tr, maxLines: 7, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: CustomTextStyles.bodyMediumBlack900)), Text("msg_terms_condition".tr, style: CustomTextStyles.titleMediumPrimary), SizedBox(height: 8.v), SizedBox(width: 326.h, child: Text("msg_acceptance_of_terms_by".tr, maxLines: 25, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: CustomTextStyles.bodyMediumBlack900))]))))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 65.h, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 25.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_privacy_policy2".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }