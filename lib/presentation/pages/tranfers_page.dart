import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:ewallet/presentation/components/forms.dart';
import 'package:ewallet/presentation/components/tranfers_recent_user_item.dart';
import 'package:ewallet/presentation/components/transfers_result_users.dart';
import 'package:flutter/material.dart';

class TranfersPage extends StatelessWidget {
  const TranfersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Text(
            'Tranfers ',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CostumFilledButton(
            title: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 14,
          ),
          const TranfersRecentsUserItem(
            imageUrl: 'assets/images/img_friend1.png',
            name: 'Baylie',
            username: 'Baylie',
            isVerified: true,
          ),
          const TranfersRecentsUserItem(
            imageUrl: 'assets/images/img_friend2.png',
            name: 'Jonathan',
            username: 'jonathan',
          ),
          const TranfersRecentsUserItem(
            imageUrl: 'assets/images/img_friend3.png',
            name: 'Yonna',
            username: 'yonna',
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              TranfersResultUser(
                imageUrl: 'assets/images/img_friend1.png',
                name: 'Baylie',
                username: 'Baylie',
                isVerified: true,
              ),
              TranfersResultUser(
                imageUrl: 'assets/images/img_friend2.png',
                name: 'Yoona',
                username: 'yoona',
                isVerified: true,
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
