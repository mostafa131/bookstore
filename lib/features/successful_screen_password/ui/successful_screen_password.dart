import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/app_button.dart';
import 'package:flutter_application_1/features/auth_login/ui/auth_login_screen.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessfulScreenPassword extends StatelessWidget {
  const SuccessfulScreenPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 285.h,),
              Image.asset(Assets.images.success_mark.path,width: 100.w,height: 100.h,),
              SizedBox(height: 35.h,),
              Text( "Password Changed!".tr(),style: TextStyle(fontSize: 30.sp),),
              SizedBox(height: 3.h,),
              Text( "Your password has been changed successfully.".tr(),style: TextStyle(fontSize: 15.sp),),
              SizedBox(height: 40.h,),
              AppBottom(data:   "Back to Login".tr(), bottomColor: AppColors.primaryColor, textColor: AppColors.secondColor,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthLoginScreen()));
                },)
            ],
          ),
        ),
      ),
    );
  }
}