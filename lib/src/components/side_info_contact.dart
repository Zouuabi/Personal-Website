import 'package:flutter/material.dart';

class OnSideContactInfo extends StatelessWidget {
  const OnSideContactInfo(
      {Key? key,
      required this.screenHeight,
      required this.child,
      this.orientation = 'leftToRight'})
      : super(key: key);

  final double screenHeight;
  final Widget? child;
  final String orientation;

  int getInfoDirection(String dir) {
    if (dir == 'leftToRight') {
      return 3;
    } else if (dir == 'rightToLeft') {
      return 1;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RotatedBox(quarterTurns: getInfoDirection(orientation), child: child),
        SizedBox(
          height: screenHeight * 0.05,
        ),
        RotatedBox(
          quarterTurns: getInfoDirection(orientation),
          child: Container(
            width: 100,
            height: 1,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
