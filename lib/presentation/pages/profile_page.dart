import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/profile_menu_items.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BaseColors.neutral50,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: BaseColors.neutral900,
        ),
        title: const Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            decoration: BoxDecoration(
              color: BaseColors.neutral50,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
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
                      width: 28,
                      height: 28,
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: BaseColors.success500,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Baylie',
                  style: AppTheme.appTextTheme.largeNoneMedium!
                      .copyWith(color: BaseColors.neutral900),
                ),
                const SizedBox(height: 40),
                ProfileMenuItem(
                  title: 'Edit Profile',
                  iconUrl: 'assets/images/ic_edit_profile.png',
                  onTap: () async{
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      Navigator.pushNamed(context, '/profile_edit');
                    }
                  },
                ),
                ProfileMenuItem(
                  title: 'My Pin',
                  iconUrl: 'assets/images/ic_pin.png',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  title: 'Wallet Setting',
                  iconUrl: 'assets/images/ic_wallet.png',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  title: 'My Rewards',
                  iconUrl: 'assets/images/ic_my_rewards.png',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  title: 'Help Center',
                  iconUrl: 'assets/images/ic_help.png',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  title: 'Logout',
                  iconUrl: 'assets/images/ic_logout.png',
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 87),
          Text(
            'Version 0.0.1',
            textAlign: TextAlign.center,
            style: AppTheme.appTextTheme.smallNoneReguler!
                .copyWith(color: BaseColors.neutral500),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
