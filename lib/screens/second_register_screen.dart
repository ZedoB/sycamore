import 'package:flutter/material.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/screens/third_register_screen.dart';
import '../components/item_checkbox_second_register_screen.dart';
import '../custom_widgets/custom_button.dart';

class SecondRegisterScreen extends StatelessWidget {
  const SecondRegisterScreen({super.key});

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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            width: 280,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffB7D4C5),
                  Color(0xff1D938F),
                ],
              ),
              borderRadius: BorderRadius.circular(34),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Do you have any of the\n following chronic diseases?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ItemCheckBoxRegisterScreen(text: 'Heart disease'),
                ItemCheckBoxRegisterScreen(text: 'Diabetes'),
                ItemCheckBoxRegisterScreen(text: 'Hypertension'),
                ItemCheckBoxRegisterScreen(text: 'Hepatitis c '),
                ItemCheckBoxRegisterScreen(text: 'Hepatitis B'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              text: 'Next',
              onTap: () {
                navigateTo(
                    page: const ThirdRegisterScreen(), withHistory: true);
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
