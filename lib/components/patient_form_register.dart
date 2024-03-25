import 'package:flutter/material.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_label_text_form_field.dart';
import '../custom_widgets/custom_text_field.dart';
import '../screens/second_register_screen.dart';

class PatientFormRegister extends StatelessWidget {
  const PatientFormRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
        const CustomLabelText(
          text: 'Patient name',
          fontSize: 16,
        ),
        const CustomTextFormField(
          hintText: "",
        ),
        const SizedBox(
          height: 5,
        ),
        const CustomLabelText(
          text: 'Age',
          fontSize: 16,
        ),
        const CustomTextFormField(
          hintText: "",
        ),
        const SizedBox(
          height: 5,
        ),
        const CustomLabelText(
          text: 'Height',
          fontSize: 16,
        ),
        const CustomTextFormField(
          hintText: "",
        ),
        const SizedBox(
          height: 5,
        ),
        const CustomLabelText(
          text: 'Weight',
          fontSize: 16,
        ),
        const CustomTextFormField(
          hintText: "",
        ),
        const SizedBox(
          height: 5,
        ),
        const CustomLabelText(
          text: 'Temperature',
          fontSize: 16,
        ),
        const CustomTextFormField(
          hintText: "",
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: CustomButton(
            text: 'Next',
            onTap: () {
              navigateTo(page: const SecondRegisterScreen(), withHistory: true);
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
