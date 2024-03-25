import 'package:flutter/material.dart';
import 'package:sycamore_project/components/patient_list_view_item.dart';
import '../controllers/patient_controller.dart';

class PatientsListView extends StatelessWidget {
  const PatientsListView({
    super.key,
    required this.patientController,
  });

  final PatientController patientController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return PatientItem(
            item: patientController.patients[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: patientController.patients.length);
  }
}
