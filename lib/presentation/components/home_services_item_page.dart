import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class HomeServiceItemPage extends StatelessWidget {
  final String title;
  final String iconUrl;
  final VoidCallback onTap;

  const HomeServiceItemPage({
    Key? key,
    required this.title,
    required this.iconUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: BaseColors.neutral50,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Image.asset(
                iconUrl,
                width: 26,
              ),
            ),
          ),
          Text(
            title,
            style: AppTheme.appTextTheme.regulerNoneMedium!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
