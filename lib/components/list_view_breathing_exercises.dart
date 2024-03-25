import 'package:flutter/material.dart';
import '../controllers/breathing_exercises_controller.dart';
import 'item_list_view_breathing_exercises.dart';

class ListViewBreathingExercises extends StatelessWidget {
  ListViewBreathingExercises({
    super.key,
  });

  final controller = BreathingExerciseController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ItemListViewBreathingExercises(
          item: controller.exercises[index],
        );
      },
      itemCount: controller.exercises.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
