import 'package:flutter/material.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/screens/doctor_sign_up_screen.dart';
import 'package:sycamore_project/screens/patient_signup_screen.dart';

void showSignUpDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Container(
          height: 240,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Sign Up As',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                    value: 'patient',
                    groupValue: 'signupType',
                    onChanged: (value) {
                      navigateTo(
                          page: const PatientSignUpScreen(), withHistory: true);
                    },
                  ),
                  const Text(
                    'Patient',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                    value: 'doctor',
                    groupValue: 'signupType',
                    onChanged: (value) {
                      navigateTo(
                          page: const DoctorSignUpScreen(), withHistory: true);
                    },
                  ),
                  const Text(
                    'Doctor',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      );
    },
  );
}
