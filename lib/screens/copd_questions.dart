import 'package:flutter/material.dart';
import 'package:sycamore_project/constants.dart';
import 'package:sycamore_project/controllers/questions_controller.dart';

class COPDQuestions extends StatefulWidget {
  const COPDQuestions({Key? key}) : super(key: key);

  @override
  State<COPDQuestions> createState() => _COPDQuestionsState();
}

class _COPDQuestionsState extends State<COPDQuestions> {
  final controller = QuestionsController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,
        color: Colors.black,),
        onPressed: (){
          Navigator.of(context).pop();
        },),
      ),
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
                  const SizedBox(height: 5,),
                  const Text(
                      'To complete your register\n please answer these\n questions',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 24),
                  textAlign: TextAlign.center,),
                  const SizedBox(height: 45,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      controller.copdQuestions.length,
                          (index) => Padding(
                        padding: const EdgeInsetsDirectional.only(end: 5),
                        child: Container(
                          width: 15, height: 4,
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
                    height: 50,
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
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      yesNoButton('Yes'),
                      yesNoButton('No')
                    ],
                  ),
                  // kCOPdAnswers[controller.copdQuestions[
                  // controller.currentPage].question] == 'Yes' ?
                  // Text(controller.copdQuestions[
                  // controller.currentPage].question) : const Text('')
                  // Text(kCOPDYesAnswers.toString())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container yesNoButton(String answer) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xff777777),
          )),
      width: 100,
      height: 55,
      child: TextButton(
        onPressed: () {
          setState(() {
            kCOPDAnswers[controller
                .copdQuestions[controller.currentPage].question] = answer;

            if(kCOPDAnswers[controller.copdQuestions[
            controller.currentPage].question] == 'Yes'){
              kCOPDYesAnswers.add(controller.copdQuestions[
              controller.currentPage].question);}
          });
        },
        child: Text(answer, style: const TextStyle(
          color: Color(0xff777777), fontSize: 20
        ),),
      ),
    );
  }
}
