import '../help_faq_page/widgets/alllist_item_widget.dart';
import 'bloc/help_faq_bloc.dart';
import 'models/alllist_item_model.dart';
import 'models/help_faq_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HelpFaqPage extends StatefulWidget {
  const HelpFaqPage({Key? key})
      : super(
          key: key,
        );

  @override
  HelpFaqPageState createState() => HelpFaqPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HelpFaqBloc>(
      create: (context) => HelpFaqBloc(HelpFaqState(
        helpFaqModelObj: HelpFaqModel(),
      ))
        ..add(HelpFaqInitialEvent()),
      child: HelpFaqPage(),
    );
  }
}

class HelpFaqPageState extends State<HelpFaqPage>
    with AutomaticKeepAliveClientMixin<HelpFaqPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAllList(context),
                      SizedBox(height: 11.v),
                      Padding(
                        padding: EdgeInsets.only(right: 35.h),
                        child: Column(
                          children: [
                            _buildQuestion1Column(context),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildQuestion3Row(
                                context,
                                dynamicText: "msg_what_is_the_idea".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildQuestion3Row(
                                context,
                                dynamicText: "msg_the_correct_way".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildQuestion3Row(
                                context,
                                dynamicText: "msg_how_will_i_benefit".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildQuestion3Row(
                                context,
                                dynamicText: "msg_are_there_any_other".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildQuestion3Row(
                                context,
                                dynamicText: "msg_what_are_the_online".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            _buildQuestion3Row(
                              context,
                              dynamicText: "msg_how_to_add_review".tr,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAllList(BuildContext context) {
    return SizedBox(
      height: 44.v,
      child: BlocSelector<HelpFaqBloc, HelpFaqState, HelpFaqModel?>(
        selector: (state) => state.helpFaqModelObj,
        builder: (context, helpFaqModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 13.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 14.h,
              );
            },
            itemCount: helpFaqModelObj?.alllistItemList.length ?? 0,
            itemBuilder: (context, index) {
              AlllistItemModel model =
                  helpFaqModelObj?.alllistItemList[index] ?? AlllistItemModel();
              return AlllistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildQuestion1Column(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineGray3001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_cleanliness_and".tr,
                style: CustomTextStyles.labelLargeBlack900_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowDownPrimary,
                height: 8.v,
                width: 13.h,
                margin: EdgeInsets.only(
                  left: 74.h,
                  bottom: 8.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Column(
            children: [
              Divider(),
              SizedBox(height: 6.v),
              Container(
                width: 311.h,
                margin: EdgeInsets.only(
                  left: 4.h,
                  right: 12.h,
                ),
                child: Text(
                  "msg_cleanliness_positively".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallBlack90010,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildQuestion3Row(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray3001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              dynamicText,
              style: CustomTextStyles.labelLargeBlack900_1.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownPrimary,
            height: 8.v,
            width: 13.h,
            margin: EdgeInsets.fromLTRB(55.h, 6.v, 1.h, 6.v),
          ),
        ],
      ),
    );
  }
}
