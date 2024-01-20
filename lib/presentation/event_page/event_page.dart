import '../event_page/widgets/eventcardlist_item_widget.dart';import 'bloc/event_bloc.dart';import 'models/event_model.dart';import 'models/eventcardlist_item_model.dart';import 'package:clean_egypt/core/app_export.dart';import 'package:clean_egypt/widgets/app_bar/appbar_title_searchview.dart';import 'package:clean_egypt/widgets/app_bar/custom_app_bar.dart';import 'package:clean_egypt/widgets/custom_checkbox_button.dart';import 'package:flutter/material.dart';import 'package:outline_gradient_button/outline_gradient_button.dart';class EventPage extends StatelessWidget {const EventPage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<EventBloc>(create: (context) => EventBloc(EventState(eventModelObj: EventModel()))..add(EventInitialEvent()), child: EventPage()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 18.v), child: Padding(padding: EdgeInsets.only(left: 35.h, right: 31.h), child: Column(children: [_buildEventCardList(context), SizedBox(height: 25.v), _buildCard4(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: BlocSelector<EventBloc, EventState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return AppbarTitleSearchview(hintText: "lbl_find_your_event".tr, controller: searchController);})); } 
/// Section Widget
Widget _buildEventCardList(BuildContext context) { return BlocSelector<EventBloc, EventState, EventModel?>(selector: (state) => state.eventModelObj, builder: (context, eventModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 16.0.v), child: SizedBox(width: 209.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.black900.withOpacity(0.06))));}, itemCount: eventModelObj?.eventcardlistItemList.length ?? 0, itemBuilder: (context, index) {EventcardlistItemModel model = eventModelObj?.eventcardlistItemList[index] ?? EventcardlistItemModel(); return EventcardlistItemWidget(model, onTapSeeMoreBtn: () {onTapSeeMoreBtn(context);});});}); } 
/// Section Widget
Widget _buildCard4(BuildContext context) { return Container(decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage3139x327, height: 139.v, width: 327.h, radius: BorderRadius.circular(5.h)), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(right: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 11.h), child: Text("msg_res_sea_beach_cleanup".tr, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallManropeTeal80001ExtraBold_1)), SizedBox(height: 6.v), SizedBox(width: 209.h, child: Divider(color: appTheme.black900.withOpacity(0.06))), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 22.h), child: BlocSelector<EventBloc, EventState, bool?>(selector: (state) => state.februaryth, builder: (context, februaryth) {return CustomCheckboxButton(text: "msg_february_14th_2023".tr, value: februaryth, textStyle: CustomTextStyles.titleSmallManropeBlack900, onChange: (value) {context.read<EventBloc>().add(ChangeCheckBoxEvent(value: value));});})), Container(margin: EdgeInsets.only(left: 11.h), padding: EdgeInsets.symmetric(vertical: 10.v), decoration: AppDecoration.fillWhiteA70001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(left: 5.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_see_event_details".tr, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumTeal80001Medium), SizedBox(height: 2.v), SizedBox(width: 139.h, child: Divider(color: appTheme.teal80001))])), CustomImageView(imagePath: ImageConstant.imgArrow1, height: 1.v, width: 14.h, radius: BorderRadius.circular(1.h), margin: EdgeInsets.only(left: 14.h, top: 12.v, bottom: 10.v))]))]), Padding(padding: EdgeInsets.only(top: 20.v, bottom: 15.v), child: Column(children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), shape: RoundedRectangleBorder(side: BorderSide(color: appTheme.gray20001, width: 6.h), borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 46.adaptSize, width: 46.adaptSize, decoration: AppDecoration.outlineGray20001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: OutlineGradientButton(padding: EdgeInsets.only(left: 6.h, top: 6.v, right: 6.h, bottom: 6.v), strokeWidth: 6.h, gradient: LinearGradient(begin: Alignment(1.04, 0.5), end: Alignment(0, 0.19), colors: [appTheme.greenA100, appTheme.teal80001]), corners: Corners(topLeft: Radius.circular(23), topRight: Radius.circular(23), bottomLeft: Radius.circular(23), bottomRight: Radius.circular(23)), child: Container(height: 46.adaptSize, width: 46.adaptSize, decoration: BoxDecoration(borderRadius: BorderRadius.circular(23.h))))), Align(alignment: Alignment.center, child: Text("lbl_10".tr, textAlign: TextAlign.center, style: CustomTextStyles.labelMediumTeal80001))]))), SizedBox(height: 7.v), Text("lbl_30_spots_left".tr, textAlign: TextAlign.center, style: CustomTextStyles.labelMediumManrope)]))])), SizedBox(height: 2.v)])); } 
/// Navigates to the detailScreen when the action is triggered.
onTapSeeMoreBtn(BuildContext context) { NavigatorService.pushNamed(AppRoutes.detailScreen, ); } 
 }
