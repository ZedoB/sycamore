import 'package:flutter/material.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import '../constants.dart';
import '../custom_widgets/custom_appBar.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_label_text_form_field.dart';
import '../custom_widgets/custom_text_button.dart';
import '../custom_widgets/custom_text_field.dart';
import 'forget_password_screen.dart';

class DoctorLoginScreen extends StatelessWidget {
  const DoctorLoginScreen({super.key});

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
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/doctor.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                  height: 10,
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
                  height: 10,
                ),
                Center(
                  child: CustomButton(
                    text: 'sign in',
                    onTap: () {
                      navigateToHomePage('doctor');
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
