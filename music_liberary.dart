import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';

class music_liberary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = new AudioPlayer();
    AudioCache ac = new AudioCache(fixedPlayer: audioPlayer);
    //ac.getAbsoluteUrl(
    //'https://drive.google.com/file/d/1W9tnfwTOFrTOqHmo2pDecw1G1ZnG-Zmn/view?usp=sharing');
    //var audio = AudioCache();
    //audio.play('audio/iphone.mp3');
    //AudioPlayer audioPlayer = AudioPlayer();
    //VideoPlayerController vp = VideoPlayerController.network('');

    var app = AppBar(
      title: Text("Music App"),
      leading: Icon(Icons.music_note),
      actions: <Widget>[Icon(Icons.dehaze)],
      backgroundColor: Colors.blueGrey.shade900,
    );

    var row2 = Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.pause),
          onPressed: () => audioPlayer.pause(),
          iconSize: 50,
        ),
        IconButton(
          icon: Icon(Icons.play_circle_filled),
          onPressed: () => ac.play('iphone.mp3'),
          iconSize: 50,
        ),
        IconButton(
          icon: Icon(Icons.stop),
          onPressed: () => audioPlayer.stop(),
          iconSize: 50,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );

    var internal_row1 = Column(children: <Widget>[
      Spacer(),
      Text(
        "music from the Network",
        textScaleFactor: 1.5,
      ),
      Spacer(),
      row2,
      Spacer()
    ]);
    var ch1 = Container(
      width: double.infinity,
      height: 200,
      //color: Colors.grey.shade300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.blueGrey.shade100),
      child: internal_row1,
    );

    var internal_row2 = Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.pause),
          onPressed: () => audioPlayer.pause(),
          iconSize: 50,
        ),
        IconButton(
          icon: Icon(Icons.play_circle_filled),
          onPressed: () => ac.play('iphone.mp3'),
          iconSize: 50,
        ),
        IconButton(
          icon: Icon(Icons.stop),
          onPressed: () => audioPlayer.stop(),
          iconSize: 50,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );

    var column_inside1 = Column(
      children: <Widget>[
        Spacer(),
        Text(
          "music from local device",
          textScaleFactor: 1.5,
        ),
        Spacer(),
        internal_row2,
        Spacer(),
      ],
    );
    var ch2 = Container(
      width: 450,
      height: 200,
      //color: Colors.grey.shade300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.blueGrey.shade100),
      child: column_inside1,
    );
    var rowwise = Column(
      children: <Widget>[ch2, ch1],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );

    var sca = Scaffold(
      appBar: app,
      body: rowwise,
      backgroundColor: Colors.blueGrey,
    );
    var material = MaterialApp(
      home: sca,
      debugShowCheckedModeBanner: false,
    );

    return material;
  }
}
