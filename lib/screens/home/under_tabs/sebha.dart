import 'package:flutter/material.dart';
import '../../../core/app_color.dart';
import '../../../widgets/sebha_widgets.dart';


class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;
  double angle = 0;
  List<String> tasbeeh = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله اكبر"
  ];
  int tasbeehIndex = 0;

  void _onTap() {
    setState(() {
      counter++;
      angle += 360 / 33;
      if (counter >= 34) {
        counter = 0;
        tasbeehIndex = (tasbeehIndex + 1) % tasbeeh.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: .3,
          image: AssetImage("assets/images/sebha_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 180,
          ),
          const Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SebhaWidgets(
            angle: angle,
            onTap: _onTap,
            tasbeeh: tasbeeh[tasbeehIndex],
            counter: counter,
          ),
        ],
      ),
    );
  }
}