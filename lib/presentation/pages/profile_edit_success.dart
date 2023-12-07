import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update\nYour Profile!',
              style: AppTheme.appTextTheme.largeNoneMedium!.copyWith(
                  color: BaseColors.neutral900, fontFamily: 'Poppins'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Your data is safe with our system',
              style: AppTheme.appTextTheme.smallNoneMedium!.copyWith(
                  color: BaseColors.neutral500, fontFamily: 'Poppins'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CostumFilledButton(
              title: 'My Profile',
              width: 150,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
