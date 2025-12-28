import 'package:flutter/material.dart';
import 'package:islamiassignment/screens/home/under_tabs/sebha.dart';
import 'package:islamiassignment/screens/home/under_tabs/hadeth.dart';
import 'package:islamiassignment/screens/home/under_tabs/quran.dart';
import 'package:islamiassignment/screens/home/under_tabs/radio.dart';
import 'package:islamiassignment/screens/home/under_tabs/time.dart';
import '../../core/app_color.dart';

class Home extends StatefulWidget {
  static const String routeName = '/home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List<Widget> get tabs => [
    const Quran(),
    const Hadeth(),
    const Sebha(),
    const RadioTab(),
    const Time(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: AppColors.primary,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("quran_icon", 0),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("hadeth_icon", 1),
            label: "Hadeth",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("sebha_icon", 2),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("radio_icon", 3),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("stats_icon", 4),
            label: "Time",
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          tabs[selectedIndex],
          Image.asset("assets/images/Islami.png"),
        ],
      ),
    );
  }

  Widget getImageIcon(String imageName, int index) {
    return selectedIndex == index
        ? Container(
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(32, 32, 32, .6),
        borderRadius: BorderRadius.circular(66),
      ),
      child: ImageIcon(AssetImage("assets/images/$imageName.png")),
    )
        : ImageIcon(AssetImage("assets/images/$imageName.png"));
  }
}