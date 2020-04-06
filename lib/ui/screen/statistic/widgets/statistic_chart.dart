import 'package:covid19/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class StatisticChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: _buildPieChart(),
      ),
    );
  }

  Widget _buildPieChart() {
    Map<String, double> data = Map();

    List<Color> _colorList = [
      Color(WARNING_COLOR),
      Color(SUCCESS_COLOR),
      Color(ERROR_COLOR),
    ];

    data.putIfAbsent('Terkonfirmasi', () => 340);
    data.putIfAbsent('Sembuh', () => 124);
    data.putIfAbsent('Meninggal', () => 154);
    return PieChart(
        dataMap: data,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: 32.0,
        chartRadius: 300,
        showChartValuesInPercentage: true,
        showChartValues: true,
        showChartValuesOutside: false,
        chartValueBackgroundColor: Colors.grey[200],
        colorList: _colorList,
        showLegends: true,
        legendPosition: LegendPosition.right,
        decimalPlaces: 1,
        showChartValueLabel: true,
        initialAngle: 0,
        chartValueStyle: defaultChartValueStyle.copyWith(
          color: Colors.blueGrey[900].withOpacity(0.9),
        ),
        chartType: ChartType.disc,
    );
  }
}
