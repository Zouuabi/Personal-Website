import 'package:flutter/material.dart';


import 'package:oubeid/src/screens/home_page.dart';

void main() {
  runApp(const Oubeid());
}

class Oubeid extends StatelessWidget {
  const Oubeid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(
      //   textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      //       .apply(bodyColor: Colors.white)
      //       .copyWith(
      //         bodyText1: const TextStyle(color: Colors.red),
      //         bodyText2: const TextStyle(
      //           color: Colors.white,
      //         ),
      //       ),
      // ),
      home: HomePage(),
    );
  }
}
