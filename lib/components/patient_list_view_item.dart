import 'package:flutter/material.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/doctor_bottom_navigation_bar/pages/patient_report_screen/patient_report_screen.dart';
import 'package:sycamore_project/models/patient_doctor_home_screen_model.dart';

class PatientItem extends StatefulWidget {
  const PatientItem({
    super.key,
    required this.item,
  });

  final PatientModel item;

  @override
  State<PatientItem> createState() => _PatientItemState();
}

class _PatientItemState extends State<PatientItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = true;
        navigateTo(
          page: PatientReportScreen(
            image: widget.item.img,
            patientName: widget.item.firstName,
          ),
        );
        setState(() {});
      },
      child: Container(
        padding: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelected ? const Color(0xff1D938F) : Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 90,
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: ListTile(
          leading: CircleAvatar(
            child: Image.asset(widget.item.img),
          ),
          title: Text(
            '${widget.item.firstName}${widget.item.lastName}',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('ID: ${widget.item.id}'),
              ),
              Text('mob : ${widget.item.mobileNum}'),
              const Spacer(
                flex: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
