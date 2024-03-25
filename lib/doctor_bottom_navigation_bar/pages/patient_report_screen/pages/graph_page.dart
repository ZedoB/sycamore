import 'package:flutter/material.dart';
import 'package:sycamore_project/constants.dart';
import '../../../../components/patient_line_graph.dart';
import '../../../../components/patient_oxygen_rate_container.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Daily Progress',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const PatientLineGraph(bottomReservedSize: 28,leftReservedSize: 32,bottomInterval: 1,leftInterval: 1),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PatientOxygenRateContainer(
                      width: 120,
                      height: 100,
                      color: kPrimaryColor,
                      oxygenRate: 85,
                      text: 'minimum\noxygen rate'),
                  PatientOxygenRateContainer(
                      width: 120,
                      height: 100,
                      color: kPrimaryColor,
                      oxygenRate: 98,
                      text: 'maximum\noxygen rate'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
