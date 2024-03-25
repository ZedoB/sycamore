import 'package:flutter/material.dart';
import '../constants.dart';

class ItemRadioButtonRegisterScreen extends StatefulWidget {
  const ItemRadioButtonRegisterScreen({
    Key? key,
    required this.groupValue,
    required this.onChanged,
    required this.text,
  }) : super(key: key);

  final String groupValue;
  final ValueChanged<String?> onChanged;
  final String text;

  @override
  State<ItemRadioButtonRegisterScreen> createState() =>
      _ItemRadioButtonRegisterScreenState();
}

class _ItemRadioButtonRegisterScreenState
    extends State<ItemRadioButtonRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String?>(
          fillColor: MaterialStateProperty.all(
              widget.groupValue == widget.text ? kPrimaryColor : Colors.white),
          value: widget.text,
          groupValue: widget.groupValue,
          onChanged: widget.onChanged,
        ),
        Text(
          widget.text,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}
