import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sycamore_project/components/search_bar.dart';
import '../../../controllers/patient_controller.dart';
import '../../components/doctor_app_bar.dart';
import '../../components/patients_list_view.dart';
class DoctorHomePage extends StatelessWidget {
  DoctorHomePage({super.key});

  PatientController patientController = PatientController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xffAAD3C5),
                    const Color(0xff40A39C).withOpacity(0.6),
                  ],
                ),
              ),
              height: 310,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.topCenter,
                    child: DoctorAppBar(
                      doctorName: 'ali',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Let\'s find your\n\tpatient information !',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0, right: 18.0),
                    child: SearchTextField(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Text(
                  'patients',
                  style: TextStyle(
                      color: const Color(0xff030303).withOpacity(0.7),
                      fontSize: 20),
                ),
                const Spacer(
                  flex: 10,
                ),
                Icon(
                  FontAwesomeIcons.arrowDownWideShort,
                  color: const Color(0xff030303).withOpacity(0.7),
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
            SizedBox(
              child: PatientsListView(patientController: patientController),
            ),
          ],
        ),
      ),
    );
  }
}
