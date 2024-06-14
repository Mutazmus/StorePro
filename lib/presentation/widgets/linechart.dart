import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class LineChart extends StatefulWidget {
  const LineChart({super.key});

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  final List<charts.Series<dynamic, num>> seriesList = [
    charts.Series<dynamic, num>(
        id: 'Sales',
        data: [
          {'year': 2017, 'sales': 100},
          {'year': 2017, 'sales': 100},
        ],
        domainFn: (dynamic sales, _) => sales['year'],
        measureFn: (dynamic sales, _) => sales['sales'],
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.orange),
        strokeWidthPxFn: (_, __) => 5.20,
        dashPatternFn: (_, __) => [15, 50]),
  ];
  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      behaviors: [
        charts.ChartTitle(
          '',
          behaviorPosition: charts.BehaviorPosition.top,
        ),
      ],
      seriesList,
      animate: true,
      defaultRenderer: charts.LineRendererConfig(
          includeArea: true, stacked: true, areaOpacity: 0.5),
    );
  }
}
