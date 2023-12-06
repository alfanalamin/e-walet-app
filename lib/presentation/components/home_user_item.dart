import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class HomeUserItemPage extends StatelessWidget {
  final String imageUrl;
  final String username;
  const HomeUserItemPage({
    Key? key,
    required this.imageUrl,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: BaseColors.neutral50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(bottom: 13),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            '@$username',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
