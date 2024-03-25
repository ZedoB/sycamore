import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PatientLineGraph extends StatelessWidget {
  const PatientLineGraph({
    super.key,
    required this.bottomReservedSize,
    required this.leftReservedSize, required this.leftInterval, required this.bottomInterval,
  });

  final double bottomReservedSize;
  final double leftReservedSize;
  final double leftInterval;
  final double bottomInterval;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LineChart(
        curve: Curves.linear,
        duration: const Duration(milliseconds: 2),
        LineChartData(
          gridData: const FlGridData(show: true, drawHorizontalLine: true),
          titlesData: FlTitlesData(
            show: true,
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              axisNameWidget: const Text(
                'Time(PM)',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: bottomReservedSize,
                interval: bottomInterval,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: leftReservedSize,
                  interval: leftInterval),
              axisNameWidget: const Text(
                'SPO2',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              barWidth: 2,
              color: kPrimaryColor,
              dotData: const FlDotData(show: false),
              spots: const [
                FlSpot(1, 82),
                FlSpot(1.5, 86),
                FlSpot(2.2, 83),
                FlSpot(3, 91),
                FlSpot(4.5, 87),
                FlSpot(5.5, 95.9),
                FlSpot(6.5, 86),
                FlSpot(8, 93),
                FlSpot(8.5, 90),
                FlSpot(11, 98),
                FlSpot(11.5, 96),
                FlSpot(12, 99),
              ],
            ),
          ],
          minX: 1,
          maxX: 12,
          minY: 82,
          maxY: 100,
        ),
      ),
    );
  }
}
