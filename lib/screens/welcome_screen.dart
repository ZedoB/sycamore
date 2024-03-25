import 'package:flutter/material.dart';
import 'package:sycamore_project/constants.dart';
import 'package:sycamore_project/core/login_show_dialog.dart';
import 'package:sycamore_project/core/sign_up_show_dialog.dart';
import 'package:sycamore_project/custom_widgets/custom_appBar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          const Spacer(
            flex: 3,
          ),
          const Text(
            'Let’s get started!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              textAlign: TextAlign.center,
              'Login to enjoy the features we’ve\n provided, and stay healthy!',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          GestureDetector(
            onTap: () {
              showLoginDialog(context);
            },
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xff199A8E),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              showSignUpDialog(context);
            },
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: kPrimaryColor, fontSize: 20),
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
