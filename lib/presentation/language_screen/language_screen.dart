import 'package:flutter/material.dart';
import 'package:todoapp/core/app_export.dart';
import 'package:todoapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:todoapp/widgets/app_bar/custom_app_bar.dart';
import 'package:todoapp/widgets/custom_elevated_button.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 31.h, top: 66.v, right: 31.h),
                child: Column(children: [
                  _buildPageHeader(context),
                  SizedBox(height: 87.v),
                  CustomElevatedButton(
                      text: "Indonesian",
                      buttonStyle: CustomButtonStyles.fillDeepOrange,
                      buttonTextStyle:
                          CustomTextStyles.labelLargeSecondaryContainer,
                      onPressed: () {
                        onTapIndonesian(context);
                      }),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                      text: "English",
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle:
                          CustomTextStyles.labelLargeDeeppurpleA400),
                  Spacer(),
                  SizedBox(height: 29.v),
                  CustomElevatedButton(
                      text: "Save",
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                      onPressed: () {
                        onTapSave(context);
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(32.h, 16.v, 319.h, 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Language", style: theme.textTheme.headlineMedium),
          SizedBox(height: 7.v),
          Text("Your settings so that we are comfortable",
              style: theme.textTheme.labelLarge)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapIndonesian(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
