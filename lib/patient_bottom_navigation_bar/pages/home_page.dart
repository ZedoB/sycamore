import 'package:flutter/material.dart';
import 'package:sycamore_project/components/patient_oxygen_rate_container.dart';
import 'package:sycamore_project/controllers/tips_patient_home_page_controller.dart';
import '../../components/list_view_patient_home_tips.dart';
import '../../components/patient_heart_rate_item.dart';
import '../../components/patient_oxygen_rate_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = HomePatientTipsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'Hi, mohamed',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'How is your health !',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: CircleAvatar(
              child: Image.asset('assets/images/patient_profile.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PatientOxygenRateItem(),
                PatientHeartRateItem(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Daily Progress',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PatientOxygenRateContainer(
                  color: Color(0xff1D938F),
                  text: 'minimum\noxygen rate',
                  oxygenRate: 84,
                  width: 95,
                  height: 100,
                  textColor: Colors.black,
                  fontSize: 15,
                ),
                PatientOxygenRateContainer(
                  color: Color(0xff000000),
                  text: 'maximum\noxygen rate',
                  oxygenRate: 93,
                  width: 95,
                  height: 100,
                  textColor: Colors.black,
                  fontSize: 15,
                ),
                PatientOxygenRateContainer(
                  color: Color(0xffF81A1A),
                  text: 'average\noxygen rate',
                  oxygenRate: 190,
                  width: 95,
                  height: 100,
                  textColor: Colors.black,
                  fontSize: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Tips for your health',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListViewPatientHomeTips(controller: controller),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
