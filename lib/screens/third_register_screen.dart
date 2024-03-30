import 'package:flutter/material.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/screens/copd_questions_screen.dart';
import 'package:sycamore_project/screens/interstitialLung_disease_questions_screen.dart';
import 'package:sycamore_project/screens/pneumonia_questions.dart';
import 'package:sycamore_project/screens/pneumonia_questions_screen.dart';
import 'package:sycamore_project/screens/pulmonary_embolism_questions.dart';
import 'package:sycamore_project/screens/pulmonary_embolism_questions_screen.dart';
import 'package:sycamore_project/screens/pulmonary_fibrosis_questions.dart';
import 'package:sycamore_project/screens/pulmonary_fibrosis_questions_sceen.dart';
import '../components/item_radio_button_register_screen.dart';
import 'copd_questions.dart';
import 'interstitial_lung_questions.dart';

class ThirdRegisterScreen extends StatefulWidget {
  const ThirdRegisterScreen({super.key});

  @override
  State<ThirdRegisterScreen> createState() => _ThirdRegisterScreenState();
}

class _ThirdRegisterScreenState extends State<ThirdRegisterScreen> {
  String? selectedDisease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              textAlign: TextAlign.center,
              'To complete your register\nplease answer this\nquestions',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24,
              fontFamily: 'Inter'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'which of them you are suffer from ?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Color(0xff1D938F),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ItemRadioButtonRegisterScreen(
                  text: 'COPD',
                  groupValue: selectedDisease ?? '',
                  onChanged: (String? value) {
                    onDiseaseSelected(value, context);
                    navigateTo(
                        page: const COPDQuestions(), withHistory: true);
                  },
                ),
                ItemRadioButtonRegisterScreen(
                  text: 'Pulmonary fibrosis',
                  groupValue: selectedDisease ?? '',
                  onChanged: (String? value) {
                    onDiseaseSelected(value, context);
                    navigateTo(page: const PulmonaryFibrosisQuestions());
                  },
                ),
                ItemRadioButtonRegisterScreen(
                  text: 'Pulmonary embolism',
                  groupValue: selectedDisease ?? '',
                  onChanged: (String? value) {
                    onDiseaseSelected(value, context);
                    navigateTo(
                        page: const PulmonaryEmbolismQuestions(),
                        withHistory: true);
                  },
                ),
                ItemRadioButtonRegisterScreen(
                  text: 'Pneumonia',
                  groupValue: selectedDisease ?? '',
                  onChanged: (String? value) {
                    onDiseaseSelected(value, context);
                    navigateTo(
                        page: const PneumoniaQuestions(),
                        withHistory: true);
                  },
                ),
                ItemRadioButtonRegisterScreen(
                  text: 'Interstitial lung disease',
                  groupValue: selectedDisease ?? '',
                  onChanged: (String? value) {
                    onDiseaseSelected(value, context);
                    navigateTo(
                        page: const InterstitialLungQuestions());
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  void onDiseaseSelected(String? value, BuildContext context) {
    setState(() {
      selectedDisease = value;
    });
  }
}
