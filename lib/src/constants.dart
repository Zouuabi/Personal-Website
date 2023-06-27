import 'package:flutter/material.dart';

const TextStyle kSmallTitleStyle = TextStyle(
  color: Colors.white,
);
const Color kWhiteColor = Colors.white;

const kBackGroundColor = BoxDecoration(
  gradient: LinearGradient(colors: [
    Color.fromARGB(255, 58, 57, 87),
    Color.fromARGB(255, 109, 83, 153),
  ], begin: Alignment.topLeft, end: Alignment.topRight),
);
const String textGmail = 'contact@oubeid.com';
final List<String> gmail = textGmail.split('');

const kSecondaryTextStyle = TextStyle(fontSize: 15, color: Colors.white70);

const String kGgreeting = 'Website Is Under Maintenance';
// const String kGgreeting = 'Hi There I\'m';
const String kMyName = 'Oubeid Zouabi.';
const String kSmallPred = 'I build beautifuly Simple things .';
const String kPresentationParagraph =
    'I\'m a Computer Science Student and Flutter Developer . Currently, I\'m focused on building solutions for my daily problems and making alternatives for some productivity apps that I\'m intrested in. ';

const BoxDecoration neumorphicDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 32, 89, 106),
      Color.fromARGB(255, 65, 118, 114),
    ],
  ),
  boxShadow: [
    BoxShadow(
        color: Colors.black,
        offset: Offset(4, 4),
        spreadRadius: 0.5,
        blurRadius: 10),
    BoxShadow(
        color: Colors.black,
        offset: Offset(-4, -4),
        spreadRadius: 0.5,
        blurRadius: 10),
  ],
);
const BoxDecoration kWSNeumorphicDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 32, 89, 106),
      Color.fromARGB(255, 65, 118, 114),
    ],
  ),
  boxShadow: [
    BoxShadow(
        color: Color.fromARGB(255, 0, 0, 0),
        offset: Offset(4, 4),
        spreadRadius: 0.5,
        blurRadius: 10),
    BoxShadow(
        color: Color.fromARGB(255, 90, 90, 90),
        offset: Offset(-4, -4),
        spreadRadius: 0.5,
        blurRadius: 10),
  ],
);

const kWSBackgroundColor = Color(0xFF272727);
const kWSAppBarColor = Color(0xFF202020);
