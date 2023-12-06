import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSetPageKtp extends StatefulWidget {
  const SignUpSetPageKtp({super.key});

  @override
  State<SignUpSetPageKtp> createState() => _SignUpSetPageKtpState();
}

class _SignUpSetPageKtpState extends State<SignUpSetPageKtp> {
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
            'Verify Your\nAccount ',
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
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: BaseColors.neutral100,
                  ),
                  child: Image.asset(
                    'assets/images/ic_upload.png',
                    width: 30,
                  ),
                ),
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: BaseColors.neutral100,
                //     image: const DecorationImage(
                //       fit: BoxFit.cover,
                //       image: AssetImage('assets/images/img_profile.png'),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card',
                  style: AppTheme.appTextTheme.regulerNoneMedium!.copyWith(
                    color: BaseColors.neutral900,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    CostumFilledButton(
                      title: 'Continue',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up-success');
                      },
                      child: Text(
                        'Skip for now',
                        style:
                            AppTheme.appTextTheme.regulerNoneMedium!.copyWith(
                          color: BaseColors.neutral900,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    )
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
