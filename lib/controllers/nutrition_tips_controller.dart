import '../models/nutrition_tips_model.dart';

class NutritionTipsController {
  List<NutritionTipsModel> tips = [
    NutritionTipsModel(
        title: "1. Meal Division:",
        subtitle:
            'Eat 6 small meals rich in calories and nutrients instead of 3 large meals.',
        img: "assets/images/meal division.png"),
    NutritionTipsModel(
        title: "2. Water Intake:",
        subtitle: 'Drink 2-3 liters of water daily.',
        img: "assets/images/water intake.png"),
    NutritionTipsModel(
        title: "3. Focus on Protein:",
        subtitle:
            'Eat protein-rich foods like meat and dairy products to maintain your strength and energy',
        img: "assets/images/focus on Protein.png"),
    NutritionTipsModel(
        title: "4. Losing weight",
        subtitle:
            'Exercising, staying hydrated, and enjoying a balanced diet rich in nutrient-dense foods',
        img: "assets/images/losing weight.png"),
    NutritionTipsModel(
        title: "5. Easy Meal Preparation:",
        subtitle: 'This will help you prepare quick small meals when needed',
        img: "assets/images/easy meal preparation.png"),
    NutritionTipsModel(
        title: "6. Eat plenty of fruits and vegetables:",
        subtitle:
            'Fresh fruits and vegetables are essential components of healthy food',
        img: "assets/images/eat plenty of fruits and vegetables.png"),
  ];
}
