import 'package:flutter/material.dart';
import 'package:sycamore_project/core/result_show_dialog.dart';
import 'package:sycamore_project/custom_widgets/custom_button.dart';
import '../../components/item_list_view_report.dart';
class PatientAutomatedSessionPage extends StatefulWidget {
  const PatientAutomatedSessionPage({
    super.key,
    this.patientName,
    this.image,
  });

  final String? patientName;
  final String? image;

  @override
  State<PatientAutomatedSessionPage> createState() =>
      _PatientAutomatedSessionPageState();
}

class _PatientAutomatedSessionPageState
    extends State<PatientAutomatedSessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.4),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                        widget.image ?? 'assets/images/patient1.png'),
                  ),
                  Text(
                    'Medical History of ${widget.patientName ?? 'Patient'}',
                    style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ListView(physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const [
                CustomListItem(
                  title: 'Name: ',
                  value: 'ali adem',
                ),
                CustomListItem(
                  title: 'Age: ',
                  value: '45',
                ),CustomListItem(
                  title: 'Chronic Disease: ',
                  value: 'diabetes',
                ),
                CustomListItem(
                  title: 'type of diagnosis : ',
                  value: 'Pulmonary fibrosis',
                ),
                CustomListItem(
                  title: 'Anemia : ',
                  value: 'No',
                ),
                CustomListItem(
                  title: 'Heart rate : ',
                  value: '190 bpm',
                ),
                CustomListItem(
                  title: 'Temperature : ',
                  value: '37.5',
                ),
                CustomListItem(
                  title: 'Hepatitis B : ',
                  value: 'No',
                ),
                CustomListItem(
                  title: 'Hepatitis C : ',
                  value: 'No',
                ),
                CustomListItem(
                  title: 'Spo : ',
                  value: '85',
                ),
                CustomListItem(
                  title: 'weight : ',
                  value: '77 kg',
                ),
                CustomListItem(
                  title: 'Height : ',
                  value: '180 cm',
                ),
                CustomListItem(
                  title: 'in body : ',
                  value: '',
                ),
              ],
            ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'next',
                onTap: () {
                  showResultDialog(context);
                },
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
