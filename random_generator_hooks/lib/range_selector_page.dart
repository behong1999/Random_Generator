import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:random_generator/randomizer_page.dart';
import 'package:random_generator/range_selector_form.dart';

class RangeSelectorPage extends HookWidget {
  // int _max = 0;
  // int _min = 0;
  final formKey = GlobalKey<FormState>();

  RangeSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final min = useState(0);
    final max = useState(0);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Select Range'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      RandomizerPage(min: min.value, max: max.value)));
            }
          },
        ),
        body: RangeSelectorForm(
          formKey: formKey,
          setMax: (value) => max.value = value,
          setMin: (value) => min.value = value,
        ));
  }
}
