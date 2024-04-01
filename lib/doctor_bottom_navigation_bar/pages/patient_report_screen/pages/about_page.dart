import 'package:flutter/material.dart';
import 'package:sycamore_project/constants.dart';
import '../../../../components/item_list_view_report.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> myList = [];
    switch(myChoise){
      case 'copd': myList = kCOPDYesAnswers; break;
      case 'fibrosis': myList = kPulmonaryFibrosisYesAnswers; break;
      case 'embolism': myList = kPulmonaryEmbolismYesAnswers; break;
      case 'pneumonia': myList = kPneumoniaYesAnswers; break;
      case 'interstitial': myList = kInterstitialLungYesAnswers; break;
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8.0),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
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
              ),
            ),
            const SizedBox(height: 5,),
            Flexible(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(top: 5),
                child: ListView.builder(
                  itemBuilder: (ctx, index){
                  return Card(
                    child: RichText(text: TextSpan(
                      text: myList[index],
                      style: const TextStyle(
                        fontFamily: 'Alice',
                        color: Color(0xff76BCBA),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),children: const [
                        TextSpan(
                          text: '\tYes',
                          style: TextStyle(
                              color: Color(0xff8E8E93),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: 'Poppins'
                          ),
                        )
                    ]
                    ),),
                  );
                },itemCount: myList.length,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
