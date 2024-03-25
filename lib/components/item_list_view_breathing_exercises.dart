import 'package:flutter/material.dart';
import '../models/breathing_exercises_model.dart';

class ItemListViewBreathingExercises extends StatelessWidget {
  const ItemListViewBreathingExercises({
    super.key,
    required this.item,
  });

  final BreathingExerciseModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.black),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(item.image),
        ),
        title: Text(
          item.title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        subtitle: Text(
          item.subTitle,
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}