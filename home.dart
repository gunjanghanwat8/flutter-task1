import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musicapp/ui/music_liberary.dart';

class central extends StatelessWidget {
  Widget build(BuildContext context) {
    {
      var app = AppBar(
        title: Text("Music App"),
        leading: Icon(Icons.music_note),
        actions: <Widget>[Icon(Icons.dehaze)],
        backgroundColor: Colors.blueGrey.shade900,
      );

      var i1 = Icon(
        Icons.music_video,
        size: 30,
        color: Colors.white,
      );
      var but1 = IconButton(
        icon: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => music_liberary()));
        },
        color: Colors.white,
        iconSize: 30,
      );
      var c1 = Row(
        children: <Widget>[
          i1,
          Text(
            "Music",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          but1
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      );

      var cot1 = Container(
          width: 350,
          height: 95,
          //color: Colors.blue.shade200,
          child: c1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey.shade100,
          ));

      var i2 = Icon(
        Icons.video_library,
        size: 30,
        color: Colors.white,
      );
      var but2 = IconButton(
        icon: Icon(Icons.arrow_forward),
        onPressed: go_to_video,
        color: Colors.white,
        iconSize: 30,
      );
      var c2 = Row(
        children: <Widget>[
          i2,
          Text(
            "Video",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          but2
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      );

      var cot2 = Container(
          width: 350,
          height: 95,
          //color: Colors.blue.shade200,
          child: c2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey.shade100,
          ));
      var bo = Container(
          color: Colors.blueGrey,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                width: 350,
                height: 95,
              ),
              cot1,
              cot2,
              Container(
                width: 350,
                height: 95,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
          ));

      var sca = Scaffold(
        appBar: app,
        body: bo,
      );
      var material = MaterialApp(
        home: sca,
        debugShowCheckedModeBanner: false,
      );
      return (material);
    }
  }
}

go_to_music() {
  print("here are the musics");
}

go_to_video() {
  print("here is the video");
}
