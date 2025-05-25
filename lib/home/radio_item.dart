import 'package:audioplayers/audioplayers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide Radio;
import 'package:islami_app/home/radio_model.dart';

class RadioItem extends StatefulWidget {
  AudioPlayer player;
  Radios radio;

  RadioItem({super.key, required this.radio, required this.player});

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          widget.radio.name ?? "",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 40),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                await widget.player.play(UrlSource(widget.radio.url ?? ""));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () async {
                await widget.player.pause();
              },
              icon: Icon(
                Icons.stop,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
