import 'package:dashboard_dpxd/constants.dart';
import 'package:dashboard_dpxd/models/chart_spline_data.dart';
import 'package:dashboard_dpxd/screen/dashboard/header.dart';
import 'package:dashboard_dpxd/screen/side_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'dashboard/row1.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        const Expanded(child: SideMain()),
        Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
              child: Column(
                children: [
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Header(),
                  const SizedBox(
                    height: defaultPadding * 2,
                  ),
                  const Row1(),
                  const SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          height: 320,
                          decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(children: [
                            Row(
                              children: [
                                Text(
                                  'Montacargas',
                                  style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 0, 221, 255),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: defaultPadding / 2),
                                  child: Text(
                                    'Eficiencia',
                                    style: GoogleFonts.raleway(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: defaultPadding * 2,
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF9644FF),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: defaultPadding / 2),
                                  child: Text(
                                    'Oportunidad',
                                    style: GoogleFonts.raleway(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: defaultPadding * 2,
                            ),
                            Expanded(
                              child: SfCartesianChart(
                                plotAreaBackgroundColor: Colors.transparent,
                                margin: const EdgeInsets.all(0),
                                borderWidth: 0,
                                plotAreaBorderWidth:0.5,
                                primaryXAxis: CategoryAxis(
                                  axisLine: const AxisLine(width: 0),
                                  labelPlacement: LabelPlacement.onTicks,
                                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                                  majorGridLines: const MajorGridLines(width: 0),
                                  majorTickLines: const MajorTickLines(width: 0),
                                borderColor: Colors.black,
                                
                                ),
                                primaryYAxis: NumericAxis(
                                  majorGridLines: const MajorGridLines(width: 0.5),
                                  majorTickLines: const MajorTickLines(width: 0),
                                  axisLine: const AxisLine(width: 1),
                                  numberFormat: NumberFormat.compactCurrency(
                                    locale: 'eu',
                                    symbol: 'km',
                                    decimalDigits: 0,
                                    
                                  ),
                                  minimum: 0,
                                  maximum: 10,
                                  interval: 2
                                ),
                                
                                series: <ChartSeries<ChartSplineData, String>>[
                                SplineSeries(
                                  color: const Color(0xFF9644FF),
                                  width: 2,
                                    dataSource: chartData,
                                    xValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.amount),
                                SplineSeries(
                                  color: const Color.fromARGB(255, 255, 68, 68),
                                  width: 2,
                                    dataSource: chartData2,
                                    xValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.amount),
                                        SplineSeries(
                                  color: Color.fromARGB(255, 255, 239, 68),
                                  width: 2,
                                    dataSource: chartData3,
                                    xValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.amount),
                                        SplineSeries(
                                  color: Color.fromARGB(255, 87, 68, 255),
                                  width: 2,
                                    dataSource: chartData4,
                                    xValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.amount),
                                        SplineSeries(
                                  color: Color.fromARGB(255, 68, 255, 168),
                                  width: 2,
                                    dataSource: chartData5,
                                    xValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper:
                                    (ChartSplineData data, _) =>
                                        data.amount),
                                ],
                            )),
                          ]),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      const SizedBox(
                        width: defaultPadding * 2,
                      ),
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}

final List<ChartSplineData> chartData = <ChartSplineData>[
  ChartSplineData('Mo', 5),
  ChartSplineData('Tu', 7),
  ChartSplineData('We', 3),
  ChartSplineData('Th', 8),
  ChartSplineData('Fr', 3),
  ChartSplineData('Sa', 7),
  ChartSplineData('Su', 5)
];
final List<ChartSplineData> chartData2 = <ChartSplineData>[
  ChartSplineData('Mo', 1),
  ChartSplineData('Tu', 2),
  ChartSplineData('We', 5),
  ChartSplineData('Th', 8),
  ChartSplineData('Fr', 5),
  ChartSplineData('Sa', 2),
  ChartSplineData('Su', 1)
];
final List<ChartSplineData> chartData3 = <ChartSplineData>[
  ChartSplineData('Mo', 2),
  ChartSplineData('Tu', 6),
  ChartSplineData('We', 8),
  ChartSplineData('Th', 3),
  ChartSplineData('Fr', 4),
  ChartSplineData('Sa', 0),
  ChartSplineData('Su', 1)
];
final List<ChartSplineData> chartData4 = <ChartSplineData>[
  ChartSplineData('Mo', 2),
  ChartSplineData('Tu', 7),
  ChartSplineData('We', 5),
  ChartSplineData('Th', 4),
  ChartSplineData('Fr', 3),
  ChartSplineData('Sa', 2),
  ChartSplineData('Su', 9)
];
final List<ChartSplineData> chartData5 = <ChartSplineData>[
  ChartSplineData('Mo', 4),
  ChartSplineData('Tu', 9),
  ChartSplineData('We', 2),
  ChartSplineData('Th', 6),
  ChartSplineData('Fr', 1),
  ChartSplineData('Sa', 7),
  ChartSplineData('Su', 0)
];


