import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:islami_app/home/tabs/hadeth_Details.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/hadith_header.png", height: 219),
        Divider(color: Color(0xffB7935F), thickness: 3),
        Text(
          "ahadeth".tr(),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 40),
          textAlign: TextAlign.center,
        ),
        Divider(color: Color(0xffB7935F), thickness: 3),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetailsScreen.routeName,
                    arguments: allAhadeth[index],
                  );
                },
                child: Text(
                  allAhadeth[index].title,
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  // // trim() => end  و ال start  يعني الي  String بتشيل ال مسافات يمين أو شمال ال
  // String x = "Mohamed";
  // String x1 = "    Mohamed";
  // String x2 = "Mohamed     ";
  // String x3 = "Moha    med";

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadethOne = ahadeth[i];
        List<String> hadethLines = hadethOne.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        print(hadethModel.title);
      }
      setState(() {});
    });
  }
}
