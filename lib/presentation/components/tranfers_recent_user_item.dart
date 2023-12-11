import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class TranfersRecentsUserItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;

  const TranfersRecentsUserItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: BaseColors.neutral100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(
              right: 14,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTheme.appTextTheme.regulerNoneHeader1!.copyWith(
                    color: BaseColors.neutral900, fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '@$username',
                style: AppTheme.appTextTheme.regulerNoneReguler!.copyWith(
                    color: BaseColors.neutral900, fontFamily: 'Poppins'),
              ),
            ],
          ),
          const Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: BaseColors.success500,
                  size: 14,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Verified',
                  style: AppTheme.appTextTheme.regulerNoneReguler!.copyWith(
                      color: BaseColors.success500, fontFamily: 'Poppins'),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
