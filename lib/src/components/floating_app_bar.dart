import 'package:flutter/material.dart';

import '../constants.dart';


class FoatingAppBar extends StatelessWidget {
  const FoatingAppBar({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.03),
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      width: screenWidth * 0.6,
      height: 50,
      decoration: kWSNeumorphicDecoration.copyWith(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarAction(screenWidth: screenWidth, label: 'Home', onTap: () {}),
          AppBarAction(screenWidth: screenWidth, label: 'About', onTap: () {}),
          AppBarAction(
              screenWidth: screenWidth, label: 'Portfolio', onTap: () {}),
          AppBarAction(
              screenWidth: screenWidth, label: 'Contact Me', onTap: () {}),
        ],
      ),
    );
  }
}

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    Key? key,
    required this.screenWidth,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final double screenWidth;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style:
              kSecondaryTextStyle.copyWith(fontSize: (screenWidth * 0.03) / 2),
        ));
  }
}
