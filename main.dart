//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:musicapp/ui/home.dart';
import 'package:musicapp/ui/music_liberary.dart';
//import 'package:musicapp/ui/try.dart';

import 'ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var g = music_liberary();
    return (g);
  }
}
