import '../models/breathing_exercises_model.dart';

class BreathingExerciseController {
  final List<BreathingExerciseModel> exercises = [
    BreathingExerciseModel(
        image: 'assets/images/تنفس من خلال أنفك 2.png',
        title: 'Breathe in through your nose',
        subTitle: 'As if you are smelling something) for about 2 seconds'),
    BreathingExerciseModel(
      image: 'assets/images/قُم بضم شفتيك 2.png',
      title: 'Purse your lips',
      subTitle:
      ('As if you are getting ready to blow out candles on a birthday cake'),
    ),
    BreathingExerciseModel(
      image: 'assets/images/تنفس ببطء للغاية 3.png',
      title: 'Breathe out very slowly',
      subTitle:
      ('As if you are getting ready to blow out candles on a birthday cake'),
    ),
    BreathingExerciseModel(
      image: 'assets/images/كرر 2.png',
      title: 'Repeat steps',
      subTitle: ('1 to 3 until you feel relaxed'),
    ),
  ];
  final List<BreathingExerciseModel> exercisesWays = [
    BreathingExerciseModel(
        image: 'assets/images/ضع إحدى يديك على صدرك والأخرى على بطنك 1.png',
        title: 'Place one hand on your chest and the other on your stomach',
        subTitle: 'When you start breathing, you should feel the hand on your stomach move'),
    BreathingExerciseModel(
      image: 'assets/images/ضع إحدى يديك على صدرك والأخرى على بطنك 1.png',
      title: 'Breathe in slowly through your nose.',
      subTitle:
      ('Your stomach should move towards your hands.'),
    ),
    BreathingExerciseModel(
      image: 'assets/images/ضع إحدى يديك على صدرك والأخرى على بطنك 1.png',
      title: ' Exhale slowly with your lips pursed.',
      subTitle:
      ('Gently press on your stomach, this will raise your diaphragm to help push the air out of your lungs'),
    ),
    BreathingExerciseModel(
      image: 'assets/images/كرر 2.png',
      title: 'Repeat steps',
      subTitle: ('1 to 3 until you feel relaxed'),
    ),
  ];
}