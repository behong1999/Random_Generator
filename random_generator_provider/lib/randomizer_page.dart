import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_generator/randomizer_change_notifier.dart';

class RandomizerPage extends StatelessWidget {
  const RandomizerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Alternative: CONSUMER
      // body: Consumer<RandomizerChangeNotifier>(
      //   builder: (context, notifier, child) =>
      //       Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text('Min: ${notifier.min}'),
      //         const SizedBox(width: 10),
      //         Text('Max: ${notifier.max}')
      //       ],
      //     ),
      //     const SizedBox(height: 20),
      //     Text(notifier.getRandomNumber?.toString() ??
      //         'Click Generate Button To Start')
      //   ]),
      // ),
      body: WillPopScope(
        onWillPop: () async {
          context.read<RandomizerChangeNotifier>().reset();
          return true;
        },
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Min: ${Provider.of<RandomizerChangeNotifier>(context).min}'),
              const SizedBox(width: 10),
              Text('Max: ${Provider.of<RandomizerChangeNotifier>(context).max}')
            ],
          ),
          const SizedBox(height: 20),
          Text(Provider.of<RandomizerChangeNotifier>(context)
                  .getRandomNumber
                  ?.toString() ??
              'Click Generate Button To Start')
        ]),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            //? context.read<RandomizerChangeNotifier>().generateRandomNumber();
            Provider.of<RandomizerChangeNotifier>(context, listen: false)
                .generateRandomNumber();
          },
          child: const Text('GENERATE')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
    );
  }
}
