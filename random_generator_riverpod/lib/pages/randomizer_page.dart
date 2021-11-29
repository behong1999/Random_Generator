import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_generator/main.dart';

class RandomizerPage extends ConsumerWidget {
  const RandomizerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomizer = ref.watch(randomizerProvider);
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Min: ${randomizer.min}'),
            const SizedBox(width: 10),
            Text('Max: ${randomizer.max}')
          ],
        ),
        const SizedBox(height: 20),
        Text(randomizer.genereatedNumber?.toString() ??
            'Click Generate Button To Start')
      ]),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            ref.read(randomizerProvider.notifier).generateRandomNumber();
          },
          child: const Text('GENERATE')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
    );
  }
}
