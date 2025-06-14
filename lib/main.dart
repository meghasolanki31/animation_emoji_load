import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const Animated_Emoji_tapped());
}

class Animated_Emoji_tapped extends StatelessWidget {
  const Animated_Emoji_tapped({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(theme: ThemeData(
      useMaterial3: true,
      fontFamily: 'IndieFlower-Regular.ttf',
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
      debugShowCheckedModeBanner: false,
      home:HomeScreen()
    );
  }
}
