import 'package:flutter/material.dart';
import '../../../../components/item_list_view_report.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8.0),
      child: ListView(
        shrinkWrap: true,
        children: const [
          CustomListItem(
            title: 'Name: ',
            value: 'ali adem',
          ),
          CustomListItem(
            title: 'Age: ',
            value: '45',
          ),
          CustomListItem(
            title: 'Id: ',
            value: '43756',
          ),
          CustomListItem(
            title: 'weight: ',
            value: '77 kg',
          ),
          CustomListItem(
            title: 'Height: ',
            value: '180 cm',
          ),
          CustomListItem(
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
            title: 'Minimum oxygen rate : ',
            value: '93',
          ),
          CustomListItem(
            title: 'Maximum oxygen rate : ',
            value: '190',
          ),
          CustomListItem(
            title: 'Temperature : ',
            value: '37.5',
          ),
          CustomListItem(
            title: 'Rheumatoid : ',
            value: 'yes',
          ),
          CustomListItem(
            title: 'Hepatitis B : ',
            value: 'No',
          ),
          CustomListItem(
            title: 'Hepatitis C : ',
            value: 'No',
          ),
        ],
      ),
    );
  }
}
