import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSetPageProfile extends StatefulWidget {
  const SignUpSetPageProfile({super.key});

  @override
  State<SignUpSetPageProfile> createState() => _SignUpSetPageProfileState();
}

class _SignUpSetPageProfileState extends State<SignUpSetPageProfile> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            'Sign In &\nGrow Your Finance ',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: BaseColors.neutral100,
                //   ),
                //   child: Image.asset(
                //     'assets/images/ic_upload.png',
                //     width: 30,
                //   ),
                // ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: BaseColors.neutral100,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img_profile.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: AppTheme.appTextTheme.regulerNoneMedium!.copyWith(
                    color: BaseColors.neutral900,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Set PIN (6 digit number)',
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
                        hintText: 'Enter your PIN',
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
                    const SizedBox(
                      height: 50,
                    ),
                    CostumFilledButton(
                      title: 'Continue',
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up-set-ktp');
                      },
                    ),
                    const SizedBox(
                      height: 50,
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
