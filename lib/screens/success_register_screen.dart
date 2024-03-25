import 'package:flutter/material.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/custom_widgets/custom_button.dart';

class SuccessRegisterScreen extends StatelessWidget {
  const SuccessRegisterScreen({super.key, required this.selectedUserType});
  final String selectedUserType;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            "assets/images/success_register.png",
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '\t\t\t\tyou have\n successfully\n\t\t registered',
            style: TextStyle(
              shadows: [
                BoxShadow(blurRadius: 2.5),
              ],
              fontFamily: "Alice",
              fontSize: 35,
              color: Color(0xff777777),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomButton(
            text: 'confirm',
            onTap: () {
              navigateToHomePage(selectedUserType);
            },
          )
        ],
      ),
    );
  }
}
