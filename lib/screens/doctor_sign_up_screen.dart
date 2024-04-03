import 'package:flutter/material.dart';
import 'package:sycamore_project/constants.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/custom_widgets/custom_appBar.dart';
import 'package:sycamore_project/screens/patient_login_screen.dart';
import 'package:sycamore_project/screens/success_register_screen.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_label_text_form_field.dart';
import '../custom_widgets/custom_text_field.dart';

class DoctorSignUpScreen extends StatefulWidget {
  const DoctorSignUpScreen({super.key});

  @override
  State<DoctorSignUpScreen> createState() => _DoctorSignUpScreenState();
}

class _DoctorSignUpScreenState extends State<DoctorSignUpScreen> {
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
                    padding: const EdgeInsets.only(left: 20.0),
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
                        page: const SuccessRegisterScreen(
                            selectedUserType: 'doctor'),
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
                              page: const PatientLoginScreen(),
                              withHistory: true);
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
