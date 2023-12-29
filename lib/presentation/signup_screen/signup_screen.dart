import 'package:flutter/material.dart';
import 'package:todoapp/core/app_export.dart';
import 'package:todoapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:todoapp/widgets/app_bar/appbar_title.dart';
import 'package:todoapp/widgets/app_bar/custom_app_bar.dart';
import 'package:todoapp/widgets/custom_elevated_button.dart';
import 'package:todoapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 28.h, right: 32.h, bottom: 5.v),
                        child: Column(children: [
                          _buildPageHeader(context),
                          SizedBox(height: 12.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgLogoGray5001120x114,
                              height: 120.v,
                              width: 114.h),
                          SizedBox(height: 96.v),
                          _buildFirstName(context),
                          SizedBox(height: 24.v),
                          _buildLastName(context),
                          SizedBox(height: 24.v),
                          _buildEmail(context),
                          SizedBox(height: 24.v),
                          _buildPassword(context),
                          SizedBox(height: 22.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 248.h,
                                  margin: EdgeInsets.only(right: 65.h),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelLarge!
                                          .copyWith(height: 1.67)))),
                          SizedBox(height: 30.v),
                          _buildNext(context),
                          SizedBox(height: 29.v),
                          GestureDetector(
                              onTap: () {
                                onTapAlreadyHaveAn(context);
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account?",
                                        style: theme.textTheme.labelLarge),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("Login",
                                            style: CustomTextStyles
                                                .labelLargeSecondaryContainerSemiBold))
                                  ]))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 28.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTitle(
              text: "Sign Up",
              margin: EdgeInsets.symmetric(horizontal: 45.h, vertical: 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          width: 218.h,
          child: Text("When community comes unity",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall!.copyWith(height: 1.18))),
      Container(
          width: 245.h,
          margin: EdgeInsets.only(right: 69.h),
          child: Text(
              "Our community is always there 24 hours if you need it, don't hesitate to join",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBlack900.copyWith(height: 1.67)))
    ]);
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomTextFormField(
        controller: firstNameController, hintText: "First name");
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return CustomTextFormField(
        controller: lastNameController, hintText: "Last name");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "E-mail",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(text: "Next");
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapAlreadyHaveAn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
