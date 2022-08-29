import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/link.dart';

import '../components/floating_app_bar.dart';

import '../components/presentation_section.dart';
import '../components/side_info_section.dart';
import 'package:oubeid/src/constants.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
      label: title, primaryColor: Colors.black.value));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  Map<String, String> projects = {
    'Kalonga \nPress To Preview': 'https://kalonga.oubeid.com/',
    'Speedy \nPress To Preview': 'https://speedy.oubeid.com/',
    'BMI Calculator \nPress To Preview':
        'https://github.com/Zouuabi/Basic-BMI-calculator-app',
    'Sticky Tasks \nPress To Preview':
        'https://github.com/Zouuabi/Sticky-Tasks',
    'Weather App \nPress To Preview': 'https://github.com/Zouuabi/Weather-app',
    'Cryptoey \nPress To Preview': 'https://github.com/Zouuabi/Cryptoey',
    'Magic Ball \nPress To Preview': 'https://github.com/Zouuabi/Magic-Ball',
    'Dicee \nPress To Preview ': 'https://github.com/Zouuabi/Dicee'
  };

  List<Link> gridviewItems() {
    List<Link> items = [];
    projects.forEach((key, value) {
      items.add(Link(
          target: LinkTarget.blank,
          uri: Uri.parse(value),
          builder: ((context, followLink) => GestureDetector(
              onTap: followLink,
              child: Container(
                width: 300,
                height: 450,
                decoration: neumorphicDecoration.copyWith(),
                margin: const EdgeInsets.all(10),
                child: Center(
                    child: Text(
                  key,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30, fontFamily: 'Perma'),
                )),
              )))));
    });
    return items;
  }

  @override
  void initState() {
    super.initState();
    setPageTitle('Oubeid Zouabi', context);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        color: kWSBackgroundColor,
        width: double.infinity,
        height: double.infinity,

        /// *  Because the choice of using a stack to layout my sections
        /// * the code must be read from button to top

        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.1, right: screenWidth * 0.1),
              children: [
                // * This sized box represents a safe area for the appbar

                SizedBox(
                    width: double.infinity,
                    height: screenWidth < 600
                        ? screenHeight * 0.05
                        : screenWidth * 0.15),

                // * Presentation plus my personal photo

                PresentationSection(screenWidth: screenWidth),

                //!  * About Me section
                // Wrap(
                //   children: [
                //     Container(
                //       margin: const EdgeInsets.symmetric(vertical: 10),
                //       height: 200,
                //       width: double.infinity,
                //       decoration:
                //           kWSNeumorphicDecoration.copyWith(color: Colors.grey),
                //     ),
                //     Container(
                //       margin: const EdgeInsets.symmetric(vertical: 10),
                //       width: double.infinity,
                //       height: 200,
                //       decoration:
                //           kWSNeumorphicDecoration.copyWith(color: Colors.grey),
                //       child: const Center(
                //         child: Text("Who I am"),
                //       ),
                //     ),
                //   ],
                // ),
                //! * Projects section
                Center(
                  child: Wrap(
                    children: gridviewItems(),
                  ),
                ),
                // * Get in touch section
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 50),
                    width: double.infinity,
                    height: 400,
                    decoration:
                        neumorphicDecoration.copyWith(color: Colors.teal),
                  ),
                )
              ],
            ),

            /// * Contact Info and Social Media links on both sides of page

            SideInfoSection(
                screenHeight: screenHeight, screenWidth: screenWidth),

            /// * The floating appBar

            screenWidth > 600
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FoatingAppBar(
                          screenHeight: screenHeight, screenWidth: screenWidth),
                    ],
                  )
                : Container(),

            ///
          ],
        ),
      ),
    ));
  }
}
