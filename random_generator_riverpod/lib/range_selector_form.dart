import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_generator/main.dart';

typedef ValueSetter = Function(int value); //* alias for function

class RangeSelectorForm extends ConsumerWidget {
  final GlobalKey<FormState> formKey;

  const RangeSelectorForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextFormField(
              text: 'Minimum',
              //* A Callback in order to change _min value
              valueSetter: (value) =>
                  ref.read(randomizerProvider.notifier).setMin(value),
            ),
            const SizedBox(height: 8),
            RangeSelectorTextFormField(
              text: 'Maximum',
              //? valueSetter: (value) => _max = value,
              valueSetter: (value) =>
                  ref.read(randomizerProvider.notifier).setMax(value),
            )
          ],
        ),
      ),
    );
  }
}

class RangeSelectorTextFormField extends StatelessWidget {
  final String text;
  final ValueSetter valueSetter;
  const RangeSelectorTextFormField(
      {Key? key, required this.text, required this.valueSetter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          InputDecoration(labelText: text, border: const OutlineInputBorder()),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: false,
      ),
      validator: (value) {
        if (int.tryParse(value ?? '') == null || value == null) {
          return 'Must be an Interger';
        } else {
          return null;
        }
      },
      onSaved: (value) => valueSetter(int.parse(value ?? '')),
    );
  }
}
