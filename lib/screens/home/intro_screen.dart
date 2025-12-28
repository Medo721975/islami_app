import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamiassignment/core/app_color.dart';
import 'package:islamiassignment/core/app_font_text.dart';
import 'package:islamiassignment/screens/home/home.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = '/intro';

  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      color: AppColors.primary,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );

    final List<PageViewModel> listPagesViewModel = [
      PageViewModel(
        titleWidget: Text(
          "Welcome To Islami App",
          style: titleStyle,
          textAlign: TextAlign.center,
        ),
        body: "",
        image: Image.asset("assets/images/Intro_1.png"),
      ),
      PageViewModel(
        titleWidget: Text("Welcome To Islami App", style: titleStyle),
        bodyWidget: Text(
          "We Are Very Excited To Have You In Our Community",
          style: AppStyle.bodyStyle,
          textAlign: TextAlign.center,
        ),
        image: Image.asset("assets/images/Intro_2.png"),
      ),
      PageViewModel(
        titleWidget: Text("Reading The Quran", style: titleStyle),
        bodyWidget: Text(
          "Read, and your Lord is the Most Generous",
          style: AppStyle.bodyStyle,
          textAlign: TextAlign.center,
        ),
        image: Image.asset("assets/images/Intro_3.png"),
      ),
      PageViewModel(
        titleWidget: Text("Tasbeeh", style: titleStyle),
        bodyWidget: Text(
          "Praise The Name Of Your Lord, The Most \n High",
          style: AppStyle.bodyStyle,
          textAlign: TextAlign.center,
        ),
        image: Image.asset("assets/images/Intro_4.png"),
      ),
      PageViewModel(
        titleWidget: Text("Holy Quran Radio", style: titleStyle),
        bodyWidget: Text(
          "You can listen to the Holy Quran Radio through the application for free and easily",
          style: AppStyle.bodyStyle,
          textAlign: TextAlign.center,
        ),
        image: Image.asset("assets/images/Intro_5.png"),
      ),
    ];

    return IntroductionScreen(
      pages: listPagesViewModel,
      globalBackgroundColor: AppColors.dark,
      showNextButton: true,
      bodyPadding: const EdgeInsets.only(top: 300),
      showDoneButton: true,
      showSkipButton: true,
      skip: Text("Skip", style: AppStyle.bodyStyle),
      globalHeader: Image.asset("assets/images/Islami.png"),
      next: Text("Next", style: AppStyle.bodyStyle),
      done: Text("Done", style: AppStyle.bodyStyle),
      dotsDecorator: DotsDecorator(
        color: AppColors.grey,
        activeShape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        activeColor: AppColors.primary,
        activeSize: const Size(20, 7),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onSkip: () {
        Navigator.pushReplacementNamed(context, Home.routeName);
      },
      onDone: () {
        Navigator.pushReplacementNamed(context, Home.routeName);
      },
    );
  }
}