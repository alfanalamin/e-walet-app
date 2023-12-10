import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/pages/home_page.dart';
import 'package:ewallet/presentation/pages/on_boarding_page.dart';
import 'package:ewallet/presentation/pages/pin_page.dart';
import 'package:ewallet/presentation/pages/profile_edit_page.dart';
import 'package:ewallet/presentation/pages/profile_edit_pin_page.dart';
import 'package:ewallet/presentation/pages/profile_edit_success.dart';
import 'package:ewallet/presentation/pages/profile_page.dart';
import 'package:ewallet/presentation/pages/sign_in_page.dart';
import 'package:ewallet/presentation/pages/sign_up_page.dart';
import 'package:ewallet/presentation/pages/sign_up_set_ktp_page.dart';
import 'package:ewallet/presentation/pages/sign_up_set_profile_page.dart';
import 'package:ewallet/presentation/pages/sign_up_success_page.dart';
import 'package:ewallet/presentation/pages/splash_screen.dart';
import 'package:ewallet/presentation/pages/topup_amount_page.dart';
import 'package:ewallet/presentation/pages/topup_page.dart';
import 'package:ewallet/presentation/pages/topup_success_page.dart';
import 'package:ewallet/presentation/pages/tranfers_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: BaseColors.neutral50,
          appBarTheme: AppBarTheme(
            backgroundColor: BaseColors.neutral50,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: BaseColors.neutral900,
            ),
            titleTextStyle: AppTheme.appTextTheme.largeNormalh3!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
        ),
        routes: {
          '/': (context) => const SplashScreen(),
          '/onboarding': (context) => const OnBoardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-set-profile': (context) => const SignUpSetPageProfile(),
          '/sign-up-set-ktp': (context) => const SignUpSetPageKtp(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const Homepage(),
          '/profile': (context) => const ProfilePage(),
          '/pin': (context) => const PinPage(),
          '/profile_edit': (context) => const ProfileEditPage(),
          '/profile_edit_pin': (context) => const ProfileEditPinPage(),
          '/profile_edit_success': (context) => const ProfileEditSuccessPage(),
          '/topup': (context) => const TopUpPage(),
          '/topup_amount': (context) => const TopUpAmountPage(),
          '/topup_success': (context) => const TopUpSuccessPage(),
          '/tranfers': (context) => const TranfersPage(),
        },
      ),
    );
  }
}
