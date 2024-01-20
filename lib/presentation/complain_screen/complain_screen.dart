import 'bloc/complain_bloc.dart';
import 'models/complain_model.dart';
import 'package:clean_egypt/core/app_export.dart';
import 'package:clean_egypt/widgets/custom_elevated_button.dart';
import 'package:clean_egypt/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ComplainBloc>(
      create: (context) => ComplainBloc(ComplainState(
        complainModelObj: ComplainModel(),
      ))
        ..add(ComplainInitialEvent()),
      child: ComplainScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComplainBloc, ComplainState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 18.v),
                  CustomImageView(
                    imagePath: ImageConstant.img883ffc048f74f41249x372,
                    height: 249.v,
                    width: 372.h,
                    radius: BorderRadius.circular(
                      32.h,
                    ),
                  ),
                  SizedBox(height: 47.v),
                  _buildDateSection(
                    context,
                    dateLabel: "lbl_type_of_waste".tr,
                    dateText: "lbl_garbage2".tr,
                  ),
                  SizedBox(height: 17.v),
                  BlocSelector<ComplainBloc, ComplainState,
                      TextEditingController?>(
                    selector: (state) => state.addressController,
                    builder: (context, addressController) {
                      return CustomFloatingTextField(
                        controller: addressController,
                        labelText: "lbl_address".tr,
                        labelStyle: CustomTextStyles.bodySmallBlack900,
                        hintText: "lbl_address".tr,
                        textInputAction: TextInputAction.done,
                      );
                    },
                  ),
                  SizedBox(height: 17.v),
                  _buildDateSection(
                    context,
                    dateLabel: "lbl_date".tr,
                    dateText: "lbl_2024_10_10".tr,
                  ),
                  SizedBox(height: 36.v),
                  CustomElevatedButton(
                    height: 44.v,
                    width: 236.h,
                    text: "lbl_upload".tr.toUpperCase(),
                    buttonStyle: CustomButtonStyles.fillBlueGrayTL22,
                    buttonTextStyle: CustomTextStyles.titleMediumWhiteA70001,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common widget
  Widget _buildDateSection(
    BuildContext context, {
    required String dateLabel,
    required String dateText,
  }) {
    return Container(
      width: 377.h,
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 9.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder15,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup173,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dateLabel,
            style: CustomTextStyles.titleMediumBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            dateText,
            style: CustomTextStyles.bodySmallBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ],
      ),
    );
  }
}
