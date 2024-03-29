import 'package:flutter/material.dart';
import 'package:todoapp/core/app_export.dart';
import 'package:todoapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:todoapp/widgets/app_bar/appbar_title.dart';
import 'package:todoapp/widgets/app_bar/custom_app_bar.dart';
import 'package:todoapp/widgets/custom_elevated_button.dart';
import 'package:todoapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 32.h, right: 32.h, bottom: 5.v),
                        child: Column(children: [
                          _buildPageHeader(context),
                          SizedBox(height: 21.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgLogoGray5001113x116,
                              height: 113.v,
                              width: 116.h),
                          SizedBox(height: 115.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "Email",
                              textInputType: TextInputType.emailAddress,
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlineOnPrimaryTL14),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                              controller: passwordController,
                              hintText: "Password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlineOnPrimaryTL14),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPasswor(context);
                                  },
                                  child: Text("Forgot Password?",
                                      style: CustomTextStyles
                                          .labelLargeSecondaryContainerSemiBold))),
                          SizedBox(height: 23.v),
                          CustomElevatedButton(
                              text: "Next",
                              onPressed: () {
                                onTapNext(context);
                              }),
                          SizedBox(height: 33.v),
                          GestureDetector(
                              onTap: () {
                                onTapDonTHaveAnAccount(context);
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("Don’t have an account?",
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("SignUp",
                                            style: CustomTextStyles
                                                .labelLargeSecondaryContainerSemiBold))
                                  ]))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTitle(
              text: "Login",
              margin: EdgeInsets.symmetric(horizontal: 48.h, vertical: 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 221.h,
          margin: EdgeInsets.only(right: 89.h),
          child: Text("this is your community, help them to grow more",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall!.copyWith(height: 1.18))),
      SizedBox(height: 1.v),
      Container(
          width: 282.h,
          margin: EdgeInsets.only(right: 28.h),
          child: Text(
              "Our community is your community too so let's strengthen our community together",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge!.copyWith(height: 1.67)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPasswor(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapDonTHaveAnAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
