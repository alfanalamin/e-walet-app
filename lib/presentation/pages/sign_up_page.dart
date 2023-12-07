import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:ewallet/presentation/components/forms.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: AppTheme.appTextTheme.largeNoneHeading1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 26,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: BaseColors.neutral50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomFormField(
                      title: 'Full Name',
                      hint: 'Enter your full name',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomFormField(
                      title: 'Email Address',
                      hint: 'Enter your email address',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomFormField(
                      title: 'Password',
                      obscureText: true,
                      hint: 'Enter Your Password',
                      showVisibilityIcon: true,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget Password',
                        style: AppTheme.appTextTheme.smallNoneMedium!.copyWith(
                            color: BaseColors.primary500,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CostumFilledButton(
                      title: 'Continue',
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up-set-profile');
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CostumFilledText(
                      titleone: 'Already have an account?',
                      titletwo: 'Sign In',
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up-set-profile');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
