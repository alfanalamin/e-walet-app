import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final String title;
  final String iconUrl;
  final VoidCallback? onTap;

  const ProfileMenuItem(
      {Key? key, required this.title, required this.iconUrl, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Image.asset(
              iconUrl,
              width: 24,
            ),
            const SizedBox(width: 18),
            Text(
              title,
              style: AppTheme.appTextTheme.regulerNoneReguler!.copyWith(
                  color: BaseColors.neutral900, fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
    );
  }
}
