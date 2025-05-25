import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String> Azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لا حول ولا قوة إلا بالله",
    "استغفر الله العظيم",
    "لا إله إلا الله",
  ];
  int index = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/head of seb7a.png"),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: () {
                    onTap();
                  },

                  child: Image.asset("assets/images/body of seb7a.png"),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "$counter",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "${Azkar[index]}",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ),
      ],
    );
  }

  onTap() {
    counter++;
    if (counter % 33 == 0) {
      index++;
      counter++;
      counter = 0;
    }
    if (index == Azkar.length) {
      index = 0;
    }
    angle += 360 / 4;
    setState(() {});
  }
}
