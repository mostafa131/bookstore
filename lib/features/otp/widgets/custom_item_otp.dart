import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItemOtp extends StatelessWidget {

  const CustomItemOtp({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        width: 48.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: BoxBorder.all(
                color: AppColors.primaryColor,
                width:2
            )
        ),child: TextFormField(

      style: TextStyle(fontSize: 22.sp),
      maxLength: 1,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.numberWithOptions(),
      decoration: InputDecoration(
        counterText: "",
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.sp),
            borderSide: BorderSide(
                width: 0,
                color: AppColors.secondColor
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.sp),
            borderSide: BorderSide(
                width: 0,
                color: AppColors.secondColor
            )),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.sp),
          borderSide: BorderSide(
              width: 0,
              color: AppColors.secondColor
          ),
        ),

      ) ,inputFormatters: [
      FilteringTextInputFormatter.digitsOnly,
    ],

    ));
  }
}