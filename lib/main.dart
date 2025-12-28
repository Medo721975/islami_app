import 'package:flutter/material.dart';
import 'package:islamiassignment/screens/home/home.dart';
import 'package:islamiassignment/screens/home/intro_screen.dart';


void main(){
  runApp(Islami());
}
class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroScreen.routeName,
      routes: {
        Home.routeName: (context) => Home(),
        IntroScreen.routeName: (context) => IntroScreen(),
      },
    );
  }
}