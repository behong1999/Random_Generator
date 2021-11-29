import 'package:flutter/material.dart';

import 'package:random_generator/randomizer_page.dart';
import 'package:random_generator/range_selector_form.dart';

class RangeSelectorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  RangeSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  builder: (context) => const RandomizerPage()));
            }
          },
        ),
        body: RangeSelectorForm(
          formKey: formKey,
        ));
  }
}
