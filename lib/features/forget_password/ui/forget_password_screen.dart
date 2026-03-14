import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/app_bar_icons.dart';
import 'package:flutter_application_1/core/widgets/app_button.dart';
import 'package:flutter_application_1/core/widgets/text_form_filed.dart';
import 'package:flutter_application_1/core/widgets/text_row_rgister.dart';
import 'package:flutter_application_1/features/otp/ui/otp_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [CustomAppbarIcon()],
                ),
                SizedBox(height: 30.h),
                Text(
                  "Forgot Password?".tr(),
                  style: TextStyle(fontSize: 30.sp),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Don't worry".tr(),
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.grayColor,
                  ),
                ),
                SizedBox(height: 30.h),
                CustomTextFormField(data: "enter email"),
                SizedBox(height: 38.sp),
                AppBottom(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                  },
                  data: "Send Code",
                  bottomColor: AppColors.primaryColor,
                  textColor: AppColors.secondColor,
                ),
                SizedBox(height: 362.h),
                CustomTextRowToRegister(data: "Login", data2: "Don’t have an account? ",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
