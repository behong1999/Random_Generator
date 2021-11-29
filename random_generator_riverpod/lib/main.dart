import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_generator/randomizer_change_notifier.dart';
import 'package:random_generator/pages/range_selector_page.dart';
import 'package:random_generator/randomizer_state_notifier.dart';

void main() {
  runApp(const MyApp());
}

final randomizerProvider =
    StateNotifierProvider<RandomizerStateNotifier, RandomizerState>(
        (ref) => RandomizerStateNotifier());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RangeSelectorPage(),
      ),
    );
  }
}
