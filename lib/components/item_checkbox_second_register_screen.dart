import 'package:flutter/material.dart';

import '../constants.dart';

class ItemCheckBoxRegisterScreen extends StatefulWidget {
  ItemCheckBoxRegisterScreen(
      {super.key, this.isChecked = false, required this.text});

  bool? isChecked;
  final String text;

  @override
  State<ItemCheckBoxRegisterScreen> createState() =>
      _ItemCheckBoxRegisterScreenState();
}

class _ItemCheckBoxRegisterScreenState
    extends State<ItemCheckBoxRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.all(
              widget.isChecked! ? kPrimaryColor : Colors.white),
          value: widget.isChecked,
          onChanged: (bool? value) {
            setState(() {
              widget.isChecked = value!;
            });
          },
        ),
        Text(
          widget.text,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}