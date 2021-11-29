import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizerPage extends HookWidget {
  final int min;
  final int max;

  const RandomizerPage({Key? key, required this.min, required this.max})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final randomNumber = useState<int?>(null);
    final ran = Random();
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Min: $min'),
            const SizedBox(width: 10),
            Text('Max: $max')
          ],
        ),
        const SizedBox(height: 20),
        Text(randomNumber.value == null
            ? 'Click Generate Button To Start'
            : randomNumber.toString())
      ]),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            randomNumber.value = min + ran.nextInt(max + 1 - min);
          },
          child: const Text('GENERATE')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
    );
  }
}
