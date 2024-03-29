import 'package:flutter/material.dart';
import 'package:sycamore_project/constants.dart';
import 'package:sycamore_project/controllers/questions_controller.dart';
import 'package:sycamore_project/core/helper_methods.dart';
import 'package:sycamore_project/custom_widgets/custom_text_button.dart';
import 'package:sycamore_project/screens/welcome_screen.dart';
import 'package:sycamore_project/try/try_controller.dart';
import '../controllers/on_boarding_controller.dart';

class Try extends StatefulWidget {
  const Try({Key? key}) : super(key: key);

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  final controller = QuestionsController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          controller.currentPage = value;
          setState(() {});
        },
        children: List.generate(
          controller.copdQuestions.length,
              (index) => SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('answer questions'),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      controller.copdQuestions.length,
                          (index) => Padding(
                        padding: const EdgeInsetsDirectional.only(end: 5),
                        child: Container(
                          width: 10, height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: index == controller.currentPage
                                ? const Color(0xff359E98)
                                : const Color(0xffD9D9D9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    controller.copdQuestions[controller.currentPage].question,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "Alice",
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff777777),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,height: 50,
                        child: TextButton(onPressed: (){
                          setState(() {
                            kCOPdAnswers[controller.copdQuestions[
                              controller.currentPage].question] = 'yes';
                          });
                        }, child: Text('yes'),),
                      ),
                      Container(
                        width: 50,height: 50,
                        child: TextButton(onPressed: (){
                          setState(() {
                            kCOPdAnswers[controller.copdQuestions[
                            controller.currentPage].question] = 'no';
                          });
                        }, child: Text('no'),),
                      )
                    ],
                  ),
                  kCOPdAnswers[controller.copdQuestions[
                  controller.currentPage].question] == 'yes' ?
                  Text(controller.copdQuestions[
                  controller.currentPage].question) : Text('')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
