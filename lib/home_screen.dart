import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Random random = Random();
  int animationNo = 1;
  int audioNo = 1;
  final audioplayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Emoji',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Tap the Screen for Change the animation',textAlign:
              TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:
              FontWeight.bold,decoration: TextDecoration.underline,
                decorationColor: Colors.black),),
              GestureDetector(
                onTap: (){
                  setState(() {
                    animationNo = random.nextInt(7) + 1;
                    audioNo = animationNo;
                    print(
                      'animation Number::$animationNo, Audio Number:: $audioNo',
                    );
                  });
                },
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white10),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 2,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  child: Lottie.asset(
                    'assets/animation/Animation$animationNo.json',
                    fit: BoxFit.fill,
                    onLoaded: (composition) {
                      audioplayer.play(AssetSource('sounds/audio$audioNo.mp3'));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}