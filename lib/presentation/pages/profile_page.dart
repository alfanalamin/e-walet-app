import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.neutral50,
      appBar: AppBar(
        backgroundColor: BaseColors.neutral50,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: BaseColors.neutral900,
        ),
        title: Text(
          'My Profile',
          style: AppTheme.appTextTheme.largeNormalh3!
              .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 40),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
