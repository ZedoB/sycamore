import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sycamore_project/constants.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/custom_widgets/custom_appBar.dart';
import 'package:sycamore_project/screens/first_register_screen.dart';
import 'package:sycamore_project/screens/patient_login_screen.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_label_text_form_field.dart';
import '../custom_widgets/custom_text_field.dart';

class PatientSignUpScreen extends StatefulWidget {
  const PatientSignUpScreen({super.key});

  @override
  State<PatientSignUpScreen> createState() => _PatientSignUpScreenState();
}

class _PatientSignUpScreenState extends State<PatientSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400), // Limit the width
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 140.0),
                    child: Text(
                      'sign up',
                      style: TextStyle(
                          fontSize: 25,
                          color: const Color(0xff030303).withOpacity(0.58),
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomLabelText(text: 'doctor id'),
                const SizedBox(
                  height: 5,
                ),
                const CustomTextFormField(
                  obscureText: true,
                  hintText: '••••••••••••••••••••',
                  suffixIcon: Icon(
                    FontAwesomeIcons.idCard,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomLabelText(text: 'email'),
                const SizedBox(
                  height: 5,
                ),
                const CustomTextFormField(
                  hintText: 'Drali200@gmail.com',
                  suffixIcon: Icon(
                    Icons.email,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomLabelText(text: 'password'),
                const SizedBox(
                  height: 5,
                ),
                const CustomTextFormField(
                  obscureText: true,
                  hintText: '••••••••••••••••••••',
                  suffixIcon: Icon(
                    Icons.lock,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomLabelText(text: 'confirm your password'),
                const SizedBox(
                  height: 5,
                ),
                const CustomTextFormField(
                  obscureText: true,
                  hintText: '••••••••••••••••••••',
                  suffixIcon: Icon(
                    Icons.lock,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: CustomButton(
                    text: 'Sign Up',
                    onTap: () {
                      navigateTo(
                        withHistory: true,
                        page: const FirstRegisterScreen(),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          navigateTo(
                              page: const PatientLoginScreen(), withHistory: true);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
