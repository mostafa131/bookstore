import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/app_bar_icons.dart';
import 'package:flutter_application_1/core/widgets/app_bottom_logo.dart';
import 'package:flutter_application_1/core/widgets/app_button.dart';
import 'package:flutter_application_1/core/widgets/text_form_filed.dart';
import 'package:flutter_application_1/core/widgets/text_row_rgister.dart';
import 'package:flutter_application_1/features/auth_login/widgets/custom_devider.dart';
import 'package:flutter_application_1/features/auth_login/widgets/custom_possword.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthLoginScreen extends StatelessWidget {
  const AuthLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [CustomAppbarIcon()],
                ),
                SizedBox(height: 29.h),
                Text("Welcome back".tr(), style: TextStyle(fontSize: 30.sp)),
                SizedBox(height: 32.h),
                CustomTextFormField(data: "enter email".tr()),
                SizedBox(height: 15),
                CustomTextFormField(
                  data: "enter password".tr(),
                  suffix: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined, size: 25),
                    ),
                  ),
                ),
                SizedBox(height: 13.h),
                CustomPassword(),
                SizedBox(height: 30.h),
                AppBottom(
                  data: "Login".tr(),
                  bottomColor: AppColors.primaryColor,
                  textColor: AppColors.secondColor,
                ),
                SizedBox(height: 34.h),
                CustomDivider(),
                SizedBox(height: 21.h),
                AppBottomWithLogo(
                  data: "Sign in with Google".tr(),
                  bottomColor: AppColors.secondColor,
                  image: AssetImage(Assets.images.google_icon.path),
                  textColor: AppColors.grayColor,
                ),
                SizedBox(height: 15.h),
                AppBottomWithLogo(
                  data: "Sign in with Apple".tr(),
                  bottomColor: AppColors.secondColor,
                  image: AssetImage(Assets.images.apple_icon.path),
                  textColor: AppColors.grayColor,
                ),
                SizedBox(height: 80.h),
                CustomTextRowToRegister(data: " Register Now", data2: "Don’t have an account? ",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
