import 'bloc/help_faq_tab_container_bloc.dart';import 'models/help_faq_tab_container_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/presentation/help_contact_us_page/help_contact_us_page.dart';import 'package:clean_egypt/presentation/help_faq_page/help_faq_page.dart';import 'package:clean_egypt/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:clean_egypt/widgets/app_bar/appbar_subtitle_two.dart';import 'package:clean_egypt/widgets/app_bar/custom_app_bar.dart';import 'package:clean_egypt/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class HelpFaqTabContainerScreen extends StatefulWidget {const HelpFaqTabContainerScreen({Key? key}) : super(key: key);

@override HelpFaqTabContainerScreenState createState() =>  HelpFaqTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<HelpFaqTabContainerBloc>(create: (context) => HelpFaqTabContainerBloc(HelpFaqTabContainerState(helpFaqTabContainerModelObj: HelpFaqTabContainerModel()))..add(HelpFaqTabContainerInitialEvent()), child: HelpFaqTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HelpFaqTabContainerScreenState extends State<HelpFaqTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 15.v), Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: BlocSelector<HelpFaqTabContainerBloc, HelpFaqTabContainerState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "lbl_search".tr, contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v));})), SizedBox(height: 29.v), _buildTabview(context), SizedBox(height: 628.v, child: TabBarView(controller: tabviewController, children: [HelpFaqPage(), HelpContactUsPage()])), SizedBox(height: 2.v), Divider()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 65.h, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 25.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_help_center".tr)); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 27.v, width: 317.h, margin: EdgeInsets.only(left: 25.h), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w500), unselectedLabelColor: appTheme.gray600, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w500), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_faq".tr)), Tab(child: Text("lbl_contact_us".tr))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
