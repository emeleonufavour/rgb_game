import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:rgb_game/heart.dart';
import 'package:rgb_game/homelayout.dart';
import 'package:rgb_game/service/color.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // double _currentRedValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('RGB GUESSING GAME')),
      body: Column(
        children: [
          const Text(
            'Match the Color',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Consumer<RandomColour>(
                  builder: (context, value, child) {
                    return Container(
                      height: 150,
                      width: 150,
                      //margin: const EdgeInsets.all(100.0),
                      decoration: BoxDecoration(
                          color: value.getColor(), shape: BoxShape.circle),
                    );
                  },
                ),
                Consumer<ColourService>(
                  builder: (context, value, child) {
                    return Container(
                      height: 150,
                      width: 150,
                      //margin: const EdgeInsets.all(100.0),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(
                              value.alpha,
                              value.currentRedValue,
                              value.currentGreenValue,
                              value.currentBlueValue),
                          shape: BoxShape.circle),
                    );
                  },
                ),
              ],
            ),
          ),
          const AlphaSlider(),
          const RedSlider(),
          const GreenSlider(),
          const BlueSlider(),
          ElevatedButton(
              onPressed: (() {
                Random random = Random();
                Provider.of<RandomColour>(context, listen: false)
                    .setRandomAlpha = random.nextInt(255);
                Provider.of<RandomColour>(context, listen: false).setRandomRed =
                    random.nextInt(255);
                Provider.of<RandomColour>(context, listen: false)
                    .setRandomGreen = random.nextInt(255);
                Provider.of<RandomColour>(context, listen: false)
                    .setRandomBlue = random.nextInt(255);
              }),
              child: const Text('Play again')),
        ],
      ),
    );
  }
}
