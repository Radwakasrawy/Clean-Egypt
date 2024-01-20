import 'bloc/full_bloc.dart';
import 'models/full_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:clean_egypt/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FullBloc>(
      create: (context) => FullBloc(FullState(
        fullModelObj: FullModel(),
      ))
        ..add(FullInitialEvent()),
      child: FullScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FullBloc, FullState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: appTheme.whiteA70001,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgFullScreen,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 32.v),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 66,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedinRed700,
                      height: 39.v,
                      width: 28.h,
                      margin: EdgeInsets.only(left: 59.h),
                    ),
                    Spacer(
                      flex: 33,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgCloseWhiteA70001,
          margin: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }
}
