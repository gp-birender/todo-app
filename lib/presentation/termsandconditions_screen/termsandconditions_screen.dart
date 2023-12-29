import 'package:flutter/material.dart';
import 'package:todoapp/core/app_export.dart';
import 'package:todoapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:todoapp/widgets/app_bar/custom_app_bar.dart';

class TermsandconditionsScreen extends StatelessWidget {
  const TermsandconditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 50.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 13.v),
                      SizedBox(
                          width: 155.h,
                          child: Text("Terms and Conditions",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineMedium!
                                  .copyWith(height: 1.36))),
                      SizedBox(height: 63.v),
                      Container(
                          width: 285.h,
                          margin: EdgeInsets.only(right: 25.h),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla fermentum netus amet risus commodo amet vulputate tellus. Et quis ornare sed diam in. Id nibh mattis quis fermentum non malesuada. Vel ullamcorper lacus, mollis pellentesque egestas aliquet aliquam. Risus lorem velit, nunc id ornare diam. Odio diam egestas vulputate tristique mi aliquam eget. Feugiat mi sed semper faucibus tellus aliquam nulla ullamcorper arcu. Est in risus pulvinar arcu pretium dui eget pretium. Nunc, sed scelerisque id varius.\nVulputate vel aliquam suscipit vitae, nullam pretium. Ut sed elementum eget id pellentesque. Odio placerat faucibus purus rhoncus, pharetra commodo. Augue a duis vitae tempor lobortis. Aliquam nunc amet fermentum, aliquet elementum ac neque, convallis. Fames nulla ornare diam odio enim. Enim, pellentesque ",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallOnPrimary_1
                                  .copyWith(height: 2.00)))
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
