import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trill/Screens/BottomNavigator/bottomNavigator.dart';
import 'package:trill/Screens/home/home_screen.dart';
import 'package:trill/Screens/welcomescreen/welcomeP.dart';
import 'package:trill/ThemeSystem.dart';

void main() {
  runApp(const MyApp());
}
// int? isviewed;
// void Main() async {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//   ));
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   isviewed = prefs.getInt('onBoard');
//   runApp(MyApp());
// }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'trill',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      // ThemeData(
      //   scaffoldBackgroundColor: bgColor,
      //   primarySwatch: Colors.amber,
      //   fontFamily: "Gordita",
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
      //   ),
      //   textTheme: const TextTheme(
      //     bodyText2: TextStyle(color: textColor),
      //   ),
      // ),
      routes: {
        "welcome": (context) => OnBoardingPage(),
        "home": (context) => HomePage(),
        "bottom": (context) => BottomNavigator(),
      },
      home: BottomNavigator(),
    );
  }
}
