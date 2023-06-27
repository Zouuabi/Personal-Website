import 'package:flutter/material.dart';

import '../constants.dart';

class PresentationSection extends StatelessWidget {
  const PresentationSection({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        screenWidth > 600
            ? Container()
            : Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 150,
                    decoration: kWSNeumorphicDecoration.copyWith(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/mypicture.jpg',
                        ),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Resume',
                        style:
                            TextStyle(color: Colors.cyanAccent, fontSize: 20),
                      ))
                ],
              ),
        Row(
          children: [
            screenWidth < 600
                ? Container()
                : Expanded(
                    child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: screenWidth * 0.2,
                        decoration: kWSNeumorphicDecoration.copyWith(
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/mypicture.jpg',
                            ),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            'Resume',
                            style: TextStyle(
                                color: Colors.cyanAccent, fontSize: 15),
                          ))
                    ],
                  )),
            Expanded(
              child: SizedBox(
                height:
                    screenWidth < 600 ? screenWidth * 0.6 : screenWidth * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      kGgreeting,
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'Roboto',
                          fontSize: screenWidth < 340 ? 15 : 20),
                    ),
                    Text(
                      kMyName,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth < 600
                            ? screenWidth * 0.04
                            : screenWidth * 0.02,
                      ),
                    ),
                    // Text(
                    //   kSmallPred,
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: screenWidth < 600
                    //           ? screenWidth * 0.04
                    //           : screenWidth * 0.02,
                    //       color: const Color.fromARGB(255, 255, 255, 255)),
                    // ),
                    Text(
                      kPresentationParagraph,
                      style: TextStyle(
                          color: const Color.fromARGB(227, 255, 255, 255),
                          fontSize: screenWidth < 600
                              ? screenWidth * 0.05
                              : screenWidth * 0.017),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                    // OutlinedButton(
                    //     onPressed: null,
                    //     child: Text(
                    //       'Check out my course!',
                    //       style: TextStyle(
                    //           color: Colors.cyanAccent,
                    //           fontSize: screenWidth * 0.03),
                    //     ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
