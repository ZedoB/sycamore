import 'package:flutter/material.dart';
import '../controllers/breathing_exercises_controller.dart';
import 'item_list_view_breathing_exercises.dart';

class ListViewBreathingWays extends StatelessWidget {
  ListViewBreathingWays({
    super.key,
  });

  final controller = BreathingExerciseController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ItemListViewBreathingExercises(
            item: controller.exercisesWays[index]);
      },
      itemCount: controller.exercisesWays.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
