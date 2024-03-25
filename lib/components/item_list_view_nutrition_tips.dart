import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/nutrition_tips_model.dart';

class ItemListViewNutritionTips extends StatelessWidget {
  const ItemListViewNutritionTips({
    super.key,
    required this.model,
  });

  final NutritionTipsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: kPrimaryColor),
      ),
      child: ListTile(
        title: Text(
          model.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          model.subtitle,
          style: const TextStyle(fontSize: 12),
        ),
        trailing: Image.asset(model.img, fit: BoxFit.fill),
      ),
    );
  }
}
