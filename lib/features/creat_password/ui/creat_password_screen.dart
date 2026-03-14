import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/app_bar_icons.dart';
import 'package:flutter_application_1/core/widgets/app_button.dart';
import 'package:flutter_application_1/core/widgets/text_form_filed.dart';
import 'package:flutter_application_1/features/successful_screen_password/ui/successful_screen_password.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatPasswordScreen extends StatelessWidget {
  const CreatPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppbarIcon()
                  ],
                ),
                SizedBox(height: 28.h,),
                Text("Create new password".tr(),style: TextStyle(fontSize: 30.sp),),
                SizedBox(height: 10.h,),
                Text("Your new password".tr(),style: TextStyle(fontSize: 15.sp,color: AppColors.grayColor),),
                SizedBox(height: 32.h,),
                CustomTextFormField(data:  "New Password".tr(),suffix: Icon(Icons.remove_red_eye_outlined),),
                SizedBox(height: 10.h,),
                CustomTextFormField(data:  "Confirm Password".tr(),suffix: Icon(Icons.remove_red_eye_outlined),),
                SizedBox(height: 38.h,),
                AppBottom(data:  "Reset Password".tr(), bottomColor: AppColors.primaryColor, textColor: AppColors.secondColor,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessfulScreenPassword()));
                  },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}