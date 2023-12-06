import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/home_latest_transactions_page.dart';
import 'package:ewallet/presentation/components/home_services_item_page.dart';
import 'package:ewallet/presentation/components/home_tips_item.dart';
import 'package:ewallet/presentation/components/home_user_item.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: BaseColors.neutral50,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: BaseColors.primary700,
          unselectedItemColor: BaseColors.neutral950,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: AppTheme.appTextTheme.xSmallNoneMedium!
              .copyWith(color: BaseColors.primary700, fontFamily: 'Poppins'),
          unselectedLabelStyle: AppTheme.appTextTheme.xSmallNoneMedium!
              .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/ic_overview.png',
                width: 20,
                color: Colors.blue,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/ic_history.png',
                width: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/ic_statistic.png',
                width: 20,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/ic_reward.png',
                width: 20,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: BaseColors.primary700,
        child: Image.asset(
          'assets/images/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransation(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }
}

Widget buildProfile() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: AppTheme.appTextTheme.regulerNoneReguler!.copyWith(
                  color: BaseColors.neutral900, fontFamily: 'Poppins'),
            ),
            Text(
              'Baylie',
              style: AppTheme.appTextTheme.largeTightBold!.copyWith(
                  color: BaseColors.neutral900, fontFamily: 'Poppins'),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/img_profile.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: BaseColors.neutral50,
              ),
              width: 16,
              height: 16,
              child: Center(
                child: Icon(
                  Icons.check_circle,
                  color: BaseColors.success500,
                  size: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildWalletCard() {
  return Container(
    width: double.infinity,
    height: 220,
    margin: const EdgeInsets.only(
      top: 30,
    ),
    padding: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/img_bg_card.png'),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Baylie',
          style: AppTheme.appTextTheme.title3!
              .copyWith(color: BaseColors.neutral50, fontFamily: 'Poppins'),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          '**** **** **** 3456',
          style: AppTheme.appTextTheme.largeNoneMedium!.copyWith(
            color: BaseColors.neutral50,
            fontFamily: 'Poppins',
            letterSpacing: 6,
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        Text(
          'Balance',
          style: AppTheme.appTextTheme.regulerNoneReguler!
              .copyWith(color: BaseColors.neutral50, fontFamily: 'Poppins'),
        ),
        Text(
          'Rp 1.000.000',
          style: AppTheme.appTextTheme.largeNoneMedium!
              .copyWith(color: BaseColors.neutral50, fontFamily: 'Poppins'),
        ),
      ],
    ),
  );
}

Widget buildLevel() {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: BaseColors.neutral50,
    ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'Level 1',
              style: AppTheme.appTextTheme.regulerNoneReguler!.copyWith(
                  color: BaseColors.neutral900, fontFamily: 'Poppins'),
            ),
            const Spacer(),
            Text(
              '55 %',
              style: AppTheme.appTextTheme.regulerNoneReguler!.copyWith(
                  color: BaseColors.success500, fontFamily: 'Poppins'),
            ),
            Text(
              'of Rp. 20.000',
              style: AppTheme.appTextTheme.regulerNoneReguler!.copyWith(
                  color: BaseColors.neutral900, fontFamily: 'Poppins'),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(55),
          child: LinearProgressIndicator(
            value: 0.55,
            minHeight: 5,
            backgroundColor: BaseColors.neutral300,
            valueColor: AlwaysStoppedAnimation<Color>(
              BaseColors.success500,
            ),
          ),
        )
      ],
    ),
  );
}

Widget buildServices() {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Do Something',
          style: AppTheme.appTextTheme.regulerNoneHeader1!
              .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeServiceItemPage(
              title: 'Top Up',
              iconUrl: 'assets/images/ic_topup.png',
              onTap: () {},
            ),
            HomeServiceItemPage(
              title: 'Send',
              iconUrl: 'assets/images/ic_send.png',
              onTap: () {},
            ),
            HomeServiceItemPage(
              title: 'Withdraw',
              iconUrl: 'assets/images/ic_withdraw.png',
              onTap: () {},
            ),
            HomeServiceItemPage(
              title: 'More',
              iconUrl: 'assets/images/ic_more.png',
              onTap: () {},
            ),
          ],
        )
      ],
    ),
  );
}

Widget buildLatestTransation() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppTheme.appTextTheme.regulerNoneHeader1!
              .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
        ),
        Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: BaseColors.neutral50,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeLatestTransactionPage(
                  iconUrl: 'assets/images/ic_transaction_cat1.png',
                  title: 'Top Up',
                  time: 'Yesterday',
                  value: '+ 450.000',
                ),
                HomeLatestTransactionPage(
                  iconUrl: 'assets/images/ic_transaction_cat2.png',
                  title: 'Cashback',
                  time: 'Sep 3',
                  value: '+ 22.000',
                ),
                HomeLatestTransactionPage(
                  iconUrl: 'assets/images/ic_transaction_cat3.png',
                  title: 'Withdraw',
                  time: 'Sep 2',
                  value: '+ 123.000',
                ),
                HomeLatestTransactionPage(
                  iconUrl: 'assets/images/ic_transaction_cat3.png',
                  title: 'Transfer',
                  time: 'Sep 1',
                  value: '+ 50.000',
                ),
                HomeLatestTransactionPage(
                  iconUrl: 'assets/images/ic_transaction_cat4.png',
                  title: 'Electric',
                  time: 'Sep 1',
                  value: '+ 12.300.000',
                ),
              ],
            )),
      ],
    ),
  );
}

Widget buildSendAgain() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Send Again',
          style: AppTheme.appTextTheme.regulerNoneHeader1!
              .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
        ),
        const SizedBox(
          height: 14,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomeUserItemPage(
                imageUrl: 'assets/images/img_friend1.png',
                username: 'yuanita',
              ),
              HomeUserItemPage(
                imageUrl: 'assets/images/img_friend2.png',
                username: 'Jani',
              ),
              HomeUserItemPage(
                imageUrl: 'assets/images/img_friend3.png',
                username: 'urip',
              ),
              HomeUserItemPage(
                imageUrl: 'assets/images/img_friend4.png',
                username: 'saleh',
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildFriendlyTips() {
  return Container(
    margin: const EdgeInsets.only(top: 30, bottom: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Friendly Tips',
          style: AppTheme.appTextTheme.regulerNoneHeader1!
              .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
        ),
        const SizedBox(
          height: 14,
        ),
        const Wrap(
          spacing: 17,
          runSpacing: 18,
          children: [
            HomeTipsItemPage(
              imageUrl: 'assets/images/img_tips1.png',
              title: 'Best tips for using\n a credit card',
              url: 'https://www.google.com/',
            ),
            HomeTipsItemPage(
              imageUrl: 'assets/images/img_tips2.png',
              title: 'Spot the good pie of finance model',
              url: 'https://www.google.com/',
            ),
            HomeTipsItemPage(
              imageUrl: 'assets/images/img_tips3.png',
              title: 'Great hack to get better advices',
              url: 'https://www.google.com/',
            ),
            HomeTipsItemPage(
              imageUrl: 'assets/images/img_tips4.png',
              title: 'Save more pennybuy this instead',
              url: 'https://www.google.com/',
            ),
          ],
        )
      ],
    ),
  );
}
