// ignore_for_file: deprecated_member_use

import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItemPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;

  const HomeTipsItemPage({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        if(await canLaunch(url)){
          launch(url);
        }
      },
      child: Container(
        width: 155,
        height: 176,
        decoration: BoxDecoration(
          color: BaseColors.neutral50,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                imageUrl,
                width: 155,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                title,
                style: AppTheme.appTextTheme.smallTightMedium!.copyWith(
                  color: BaseColors.neutral900,
                  fontFamily: 'Poppins',
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
