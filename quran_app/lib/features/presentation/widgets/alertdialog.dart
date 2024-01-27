import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:quran_app/features/presentation/views/HomeViewbody.dart';

int initialNumber = 1;

class NumberPickerDialog extends StatefulWidget {

  const NumberPickerDialog({Key? key})
      : super(key: key);

  @override
  State<NumberPickerDialog> createState() => _NumberPickerDialogState();
}

class _NumberPickerDialogState extends State<NumberPickerDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select a Number'),
      content: NumberPicker(
          value: initialNumber,
          minValue: 1,
          maxValue: 604,
          onChanged: (value) => setState(() {
                initialNumber = value;
              })),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            pageController.jumpToPage(initialNumber-1);
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
