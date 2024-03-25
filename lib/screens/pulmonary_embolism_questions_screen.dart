import 'package:flutter/material.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:sycamore_project/constants.dart';
import 'package:sycamore_project/controllers/questions_controller.dart';
import 'package:sycamore_project/core/helper_methods.dart';

class PulmonaryEmbolismQuestionsScreen extends StatefulWidget {
  const PulmonaryEmbolismQuestionsScreen({Key? key}) : super(key: key);

  @override
  State<PulmonaryEmbolismQuestionsScreen> createState() =>
      _PulmonaryEmbolismQuestionsScreenState();
}

class _PulmonaryEmbolismQuestionsScreenState
    extends State<PulmonaryEmbolismQuestionsScreen> {
  QuestionsController controller = QuestionsController();
  late PageController pageController;
  late String answer; // To store the user's answer

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    answer = "No";
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.5),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          controller.currentPage = value;
          setState(() {});
        },
        children: List.generate(
          controller.pulmonaryEmbolismQuestions.length,
          (index) => SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "To complete your register, please answer these questions:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  ProgressStepper(
                    stepCount: controller.pulmonaryEmbolismQuestions.length,
                    width: 300,
                    height: 30,
                    padding: 1,
                    currentStep: controller.currentPage,
                    bluntHead: true,
                    bluntTail: true,
                    color: Colors.grey,
                    progressColor: kPrimaryColor,
                    labels: const <String>[
                      '1',
                      '2',
                      '3',
                      '4',
                      '5',
                      '6',
                      '7',
                      '8',
                      '9',
                      '10',
                      '11',
                      '12',
                      '13'
                    ],
                    defaultTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    selectedTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 70),
                  Center(
                    child: Text(
                      controller.pulmonaryEmbolismQuestions[index].question,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 0,
                          minimumSize: const Size(90, 50),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer = "Yes";
                            if (controller.currentPage <
                                controller.pulmonaryEmbolismQuestions.length -
                                    1) {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 2),
                                  curve: Curves.easeIn);
                            } else if (controller.currentPage ==
                                controller.pulmonaryEmbolismQuestions.length -
                                    1) {
                              navigateToHomePage('patient');
                            }
                          });
                        },
                        child: Text(
                          'Yes',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 0,
                          minimumSize: const Size(90, 50),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer = "No";
                            if (controller.currentPage <
                                controller.pulmonaryEmbolismQuestions.length -
                                    1) {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 2),
                                  curve: Curves.easeIn);
                            } else if (controller.currentPage ==
                                controller.pulmonaryEmbolismQuestions.length -
                                    1) {
                              navigateToHomePage('patient');
                            }
                          });
                        },
                        child: Text(
                          'No',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
