import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:flutter/material.dart';

class TranfersSuccessPage extends StatelessWidget {
  const TranfersSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Berhasil! Tranfers',
              style: AppTheme.appTextTheme.largeNoneMedium!.copyWith(
                  color: BaseColors.neutral900, fontFamily: 'Poppins'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Use the money wisely and\ngrow your Snance',
              style: AppTheme.appTextTheme.smallNoneMedium!.copyWith(
                  color: BaseColors.neutral500, fontFamily: 'Poppins'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CostumFilledButton(
              title: 'Back to Home',
              width: 183,
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
