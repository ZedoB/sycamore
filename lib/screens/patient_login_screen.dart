import 'package:flutter/material.dart';
import 'package:sycamore_project/constants.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/custom_widgets/custom_button.dart';
import 'package:sycamore_project/custom_widgets/custom_label_text_form_field.dart';
import 'package:sycamore_project/custom_widgets/custom_text_field.dart';
import 'package:sycamore_project/screens/forget_password_screen.dart';
import '../custom_widgets/custom_appBar.dart';
import '../custom_widgets/custom_text_button.dart';

class PatientLoginScreen extends StatelessWidget {
  const PatientLoginScreen({super.key});

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
                  height: 30,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 140.0),
                    child: Text(
                      'sign in',
                      style: TextStyle(
                          fontSize: 25,
                          color: const Color(0xff030303).withOpacity(0.6),
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    color: kPrimaryColor,
                    text: 'forget password ?',
                    onPressed: () {
                      navigateTo(page: const ForgetPasswordScreen());
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: CustomButton(
                    text: 'Sign In',
                    onTap: () {
                      navigateToHomePage('patient');
                    },
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
