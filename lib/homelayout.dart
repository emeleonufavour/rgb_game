import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:rgb_game/service/color.dart';

class RedSlider extends StatelessWidget {
  const RedSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColourService>(
      builder: (context, value, child) {
        return Column(
          children: [
            Text('Red (${value.currentRedValue})'),
            Slider(
              value: value.currentRedValue,
              max: 255,
              divisions: 255,
              label: value.currentRedValue.round().toString(),
              onChanged: (double value) {
                Provider.of<ColourService>(context, listen: false)
                    .setCurrentRedValue = value;
              },
            )
          ],
        );
      },
    );
  }
}

class GreenSlider extends StatelessWidget {
  const GreenSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColourService>(
      builder: (context, value, child) {
        return Column(
          children: [
            Text('Green (${value.currentGreenValue})'),
            Slider(
              value: value.currentGreenValue,
              max: 255,
              divisions: 255,
              label: value.currentGreenValue.round().toString(),
              onChanged: (double value) {
                Provider.of<ColourService>(context, listen: false)
                    .setCurrentGreenValue = value;
              },
            )
          ],
        );
      },
    );
  }
}

class BlueSlider extends StatelessWidget {
  const BlueSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColourService>(
      builder: (context, value, child) {
        return Column(
          children: [
            Text('Blue (${value.currentBlueValue})'),
            Slider(
              value: value.currentBlueValue,
              max: 255,
              divisions: 255,
              label: value.currentBlueValue.round().toString(),
              onChanged: (double value) {
                Provider.of<ColourService>(context, listen: false)
                    .setCurrentBlueValue = value;
              },
            )
          ],
        );
      },
    );
  }
}

class AlphaSlider extends StatelessWidget {
  const AlphaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColourService>(
      builder: (context, value, child) {
        return Column(
          children: [
            Text('Transparency (${value.alpha})'),
            Slider(
              value: value.alpha,
              max: 255,
              divisions: 255,
              label: value.alpha.round().toString(),
              onChanged: (double value) {
                Provider.of<ColourService>(context, listen: false).setAlpha =
                    value;
              },
            )
          ],
        );
      },
    );
  }
}
