import 'package:flutter/material.dart';

import '../controllers/nutrition_tips_controller.dart';
import 'item_list_view_nutrition_tips.dart';

class ListViewNutritionTips extends StatelessWidget {
  const ListViewNutritionTips({
    super.key,
    required this.controller,
  });

  final NutritionTipsController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return ItemListViewNutritionTips(
            model: controller.tips[index],
          );
        },
        itemCount: controller.tips.length);
  }
}
