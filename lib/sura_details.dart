import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/providers/my_provider.dart';
import 'package:islami_app/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const routeName = 'suraDetails';
  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    loadSuraFile(int index) async {
      String sura = await rootBundle.loadString(
        "assets/files/${index + 1}.txt",
      );

      List<String> suraLines = sura.split("\n");
      print(suraLines);
      verses = suraLines;
      setState(() {});
    }

    if (verses.isEmpty) {
      loadSuraFile(model.number);
    }

    return Stack(
      children: [
        Image.asset(
          provider.mode == ThemeMode.light
              ? "assets/images/main_bg.png"
              : "assets/images/dark_bg.png",
        ),

        Scaffold(
          appBar: AppBar(
            title: Text(
              model.name,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontSize: 40),
            ),
          ),
          body: Card(
            margin: const EdgeInsets.all(12),
            color: Color.fromARGB(91, 183, 146, 95),
            elevation: 4,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    "${verses[index]} (${index + 1})",
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.inder(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.center,
                  );
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
