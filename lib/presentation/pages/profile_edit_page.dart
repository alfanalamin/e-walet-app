import 'package:ewallet/presentation/components/buttons.dart';
import 'package:ewallet/presentation/components/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(
                  title: 'username',
                  hint: 'Enter your full name',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Full Name',
                  hint: 'Enter your full name',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Email Address',
                  hint: 'Enter your email address',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                  hint: 'Enter Your Password',
                  showVisibilityIcon: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                CostumFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                  
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
