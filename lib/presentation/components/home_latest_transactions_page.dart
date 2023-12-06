import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class HomeLatestTransactionPage extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String time;
  final String value;

  const HomeLatestTransactionPage({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.time,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 48,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTheme.appTextTheme.regulerNoneHeader1!.copyWith(
                      color: BaseColors.neutral900, fontFamily: 'Poppins'),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  time,
                  style: AppTheme.appTextTheme.xSmallNoneReguler!.copyWith(
                      color: BaseColors.neutral900, fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
          Text(
            value,
            style: AppTheme.appTextTheme.regulerNoneMedium!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
