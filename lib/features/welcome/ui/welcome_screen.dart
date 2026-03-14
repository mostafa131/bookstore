import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/app_button.dart';
import 'package:flutter_application_1/features/auth_login/ui/auth_login_screen.dart';
import 'package:flutter_application_1/features/auth_register/ui/auth_register_screen.dart';
import 'package:flutter_application_1/features/welcome/widgets/icon_and_logo.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.welcomeBackground.image().image,
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              IconAndLogo(),
              SizedBox(height: 333.h),

              AppBottom(
                data: "login".tr(),
                textColor: AppColors.secondColor,
                bottomColor: AppColors.primaryColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthLoginScreen(),
                    ),
                  );
                },
              ),

              SizedBox(height: 15.h),

              AppBottom(
                data: "register".tr(),
                textColor: AppColors.blackColor,
                bottomColor: AppColors.secondColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthRegisterScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
