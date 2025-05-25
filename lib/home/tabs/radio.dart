import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:islami_app/home/radio_item.dart';
import 'package:islami_app/home/radio_model.dart';

class RadioTab extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  Radios? radios;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getRadios(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Radios> radios = snapshot.data?.radios ?? [];
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Image.asset("assets/images/Radio_img.png")),
              Expanded(
                child: ListView.builder(
                  physics: PageScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: RadioItem(
                          radio: radios[index],
                          player: audioPlayer,
                        ),
                      ),
                ),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          Center(child: Text("Failed to load Radios"));
        } else {
          return Center(child: CircularProgressIndicator());
        }
        return Center();
      },
    );
  }

  Future<RadioModel?> getRadios() async {
    var uri = Uri.parse("https://mp3quran.net/api/v3/radios");
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      print(response.body);
      return RadioModel.fromJson(json);
    }
  }
}
