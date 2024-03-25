import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sycamore_project/doctor_bottom_navigation_bar/controller/bottom_navigation_bar_controller.dart';
import 'package:sycamore_project/screens/doctor_login_screen.dart';
import 'package:sycamore_project/screens/patient_login_screen.dart';
import '../patient_bottom_navigation_bar/controller/bottom_navigation_bar_controller.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void navigateTo({required Widget page, bool withHistory = true}) {
  Navigator.pushAndRemoveUntil(
      navigatorKey.currentContext!,
      PageRouteBuilder(
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
        pageBuilder: (context, animation, secondaryAnimation) => page,
      ),
      (route) => withHistory);
}

void navigateToHomePage(String userType) {
  if (userType == 'doctor') {
    navigateTo(page: const DoctorBottomNavController(), withHistory: true);
  } else if (userType == 'patient') {
    navigateTo(page: const PatientBottomNavController(), withHistory: true);
  }
}

void navigateToLoginPage(String userType) {
  if (userType == 'doctor') {
    navigateTo(page: const DoctorLoginScreen(), withHistory: true);
  } else if (userType == 'patient') {
    navigateTo(page: const PatientLoginScreen(), withHistory: true);
  }
}

