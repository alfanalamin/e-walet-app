import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class PinPage extends StatelessWidget {
  const PinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.neutral950,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sha Pin',
              style: AppTheme.appTextTheme.largeNoneHeading1!.copyWith(
                color: BaseColors.neutral50,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                obscureText: true,
                cursorColor: BaseColors.neutral300,
                obscuringCharacter: '*',
                maxLength: 6,
                style: AppTheme.appTextTheme.regulerNoneMedium!.copyWith(
                  color: greyColor,
                  fontFamily: 'Poppins',
                  letterSpacing: 18,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: BaseColors.neutral300,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: BaseColors.neutral300,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 66,
            ),
            
          ],
        ),
      ),
    );
  }
}
