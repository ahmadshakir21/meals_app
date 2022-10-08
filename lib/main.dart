import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/screen/category_meals_screen.dart';
import 'package:meals_app/screen/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.pink,
          // accentColor: Colors.amber,
          // canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          //   fontFamily: GoogleFonts.raleway().fontFamily,
          //   textTheme: ThemeData.light().textTheme.copyWith(
          //       bodyText1: const TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
          //       bodyText2: const TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
          //       titleMedium: TextStyle(
          //           fontSize: 24,
          //           fontFamily: GoogleFonts.robotoCondensed().fontFamily)),
          ),
      // home: const CategoryScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const CategoryScreen(),
        CategoryMealsScreen.namedRoute: (context) => CategoryMealsScreen()
      },
    );
  }
}
