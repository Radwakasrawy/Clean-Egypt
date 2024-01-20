import 'bloc/first_bloc.dart';import 'models/first_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class FirstScreen extends StatelessWidget {const FirstScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FirstBloc>(create: (context) => FirstBloc(FirstState(firstModelObj: FirstModel()))..add(FirstInitialEvent()), child: FirstScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<FirstBloc, FirstState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 10.h), child: Text("lbl_skip".tr, style: CustomTextStyles.titleSmallPrimarySemiBold))), SizedBox(height: 33.v), Padding(padding: EdgeInsets.only(right: 2.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 154.h, margin: EdgeInsets.only(left: 3.h), child: Text("msg_cleanliness_is_important".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleLargeBlack90022)), SizedBox(height: 9.v), Text("msg_to_make_society".tr, style: CustomTextStyles.titleSmallBlack900), SizedBox(height: 41.v), _buildCleanlinessIsImportantTwo(context)])), SizedBox(height: 27.v), CustomImageView(imagePath: ImageConstant.imgGrid, height: 7.v, width: 82.h), SizedBox(height: 85.v), CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.symmetric(horizontal: 2.h), onPressed: () {onTapContinue(context);})]))));}); } 
/// Section Widget
Widget _buildCleanlinessIsImportantTwo(BuildContext context) { return Align(alignment: Alignment.center, child: Container(width: 323.h, margin: EdgeInsets.only(left: 6.h, right: 16.h), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder161), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 17.v), CustomImageView(imagePath: ImageConstant.imgWorldHumanitarian, height: 288.adaptSize, width: 288.adaptSize)]))); } 
/// Navigates to the sceondScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.sceondScreen, ); } 
 }
