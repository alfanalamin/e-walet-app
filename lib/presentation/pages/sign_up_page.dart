import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
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
                    Text(
                      'Full Name',
                      style: AppTheme.appTextTheme.smallNoneMedium!.copyWith(
                        color: BaseColors.neutral900,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your full name',
                        hintStyle: AppTheme.appTextTheme.smallNoneMedium!
                            .copyWith(
                                color: BaseColors.neutral400,
                                fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            color: BaseColors.neutral200,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Email Address',
                      style: AppTheme.appTextTheme.smallNoneMedium!.copyWith(
                        color: BaseColors.neutral900,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email address',
                        hintStyle: AppTheme.appTextTheme.smallNoneMedium!
                            .copyWith(
                                color: BaseColors.neutral400,
                                fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            color: BaseColors.neutral200,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Password',
                      style: AppTheme.appTextTheme.smallNoneMedium!.copyWith(
                        color: BaseColors.neutral900,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: AppTheme.appTextTheme.smallNoneMedium!
                            .copyWith(
                                color: BaseColors.neutral400,
                                fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            color: BaseColors.neutral200,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: BaseColors.neutral400,
                          ),
                        ),
                      ),
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
