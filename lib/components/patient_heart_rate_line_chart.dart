import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
class PatientHeartRateLineChart extends StatelessWidget {
  const PatientHeartRateLineChart({super.key});
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 6,
        titlesData: const FlTitlesData(
          show: true,
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            dotData: const FlDotData(show: false),
            barWidth: 3,
            isCurved: true,
            color: const Color(0xffD62C2C).withOpacity(0.8),
            belowBarData: BarAreaData(
              show: true,
              color: const Color(0xffD62C2C).withOpacity(0.6),
            ),
            spots: const [
              FlSpot(0, 3),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 2.5),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
            ],
          ),
        ],
      ),
    );
  }
}
