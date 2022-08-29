import 'package:flutter/material.dart';

import '../constants.dart';
import 'side_info_contact.dart';
import 'package:url_launcher/link.dart';

class SideInfoSection extends StatelessWidget {
  const SideInfoSection({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  Link linkHelper({
    required String link,
    required String iconPath,
  }) {
    return Link(
        target: LinkTarget.blank,
        uri: Uri.parse(link),
        builder: ((context, followLink) => IconButton(
            onPressed: followLink,
            icon: Image.asset(
              iconPath,
              width: screenWidth * 0.05,
              color: Colors.white,
            ))));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            linkHelper(
                iconPath: 'assets/images/github.png',
                link: 'https://github.com/Zouuabi'),
            linkHelper(
              link: 'https://www.linkedin.com/in/zouuabi/',
              iconPath: 'assets/images/linkedin.png',
            ),
            linkHelper(
                link:
                    'https://www.youtube.com/channel/UCleEpue7cqG3vTCsWalSvKw',
                iconPath: 'assets/images/youtube.png'),
            linkHelper(
                link: 'https://www.instagram.com/oubeeid/',
                iconPath: 'assets/images/instagram.png'),
            OnSideContactInfo(screenHeight: screenHeight, child: null),
          ],
        ),
        Link(
          uri: Uri.parse('https://mail.google.com/'),
          target: LinkTarget.blank,
          builder: (context, followLink) => TextButton(
            onPressed: followLink,
            child: OnSideContactInfo(
                screenHeight: screenHeight,
                orientation: 'rightToLeft',
                child: InkWell(
                  onTap: followLink,
                  child: Text('contact@oubeid.com',
                      style: kSecondaryTextStyle.copyWith(color: kWhiteColor)),
                )),
          ),
        )
      ],
    );
  }
}
