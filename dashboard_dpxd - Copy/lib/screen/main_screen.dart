import 'package:dashboard_dpxd/constants.dart';
import 'package:dashboard_dpxd/models/chart_spline_data.dart';
import 'package:dashboard_dpxd/screen/dashboard/header.dart';
import 'package:dashboard_dpxd/screen/side_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'dashboard/row1.dart';

class MainScreen extends StatefulWidget {
  const   MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(child: SideMain()),
        Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
              child: Column(
                children: [
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Header(),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  const Row1(),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(defaultPadding),
                          height: 320,
                          decoration: BoxDecoration(
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
                                Spacer(),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF54AFBC),
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
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: defaultPadding * 2,
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
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
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: defaultPadding * 2,
                            ),
                            Expanded(
                              child: SfCartesianChart(
                                primaryXAxis: CategoryAxis(
                                  labelPlacement: LabelPlacement.onTicks,
                                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                                  axisLine: AxisLine(width: 0),
                                  majorGridLines: MajorGridLines(width: 0),
                                  majorTickLines: MajorTickLines(width: 0)
                                ),
                                primaryYAxis: NumericAxis(
                                  axisLine: AxisLine(width: 0)
                                ),
                                series: <ChartSeries<ChartSplineData, String>>[
                                SplineSeries(
                                  color: Color(0xFF9644FF),
                                  width: 2,
                                    dataSource: chartData,
                                    xValueMapper: (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper: (ChartSplineData data, _) =>
                                        data.amount),

                                SplineSeries(
                                  color: Color(0xFFFF4444),
                                  width: 2,
                                    dataSource: chartData2,
                                    xValueMapper: (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper: (ChartSplineData data, _) =>
                                        data.amount),

                                SplineSeries(
                                  color: Color(0xFFF3FF44),
                                  width: 2,
                                    dataSource: chartData3,
                                    xValueMapper: (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper: (ChartSplineData data, _) =>
                                        data.amount),
                                
                                SplineSeries(
                                  color: Color(0xFF44FF4A),
                                  width: 2,
                                    dataSource: chartData4,
                                    xValueMapper: (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper: (ChartSplineData data, _) =>
                                        data.amount),
                                
                                SplineSeries(
                                  color: Color(0xFF444AFF),
                                  width: 2,
                                    dataSource: chartData5,
                                    xValueMapper: (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper: (ChartSplineData data, _) =>
                                        data.amount),
                                
                                SplineSeries(
                                  color: Color(0xFFFF44C7),
                                  width: 2,
                                    dataSource: chartData6,
                                    xValueMapper: (ChartSplineData data, _) =>
                                        data.month,
                                    yValueMapper: (ChartSplineData data, _) =>
                                        data.amount),
                              ],
                            ))
                          ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      SizedBox(
                        width: defaultPadding * 2,
                      ),
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
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
  ChartSplineData('Mo', 2),
  ChartSplineData('Tu', 4),
  ChartSplineData('We', 1),
  ChartSplineData('Th', 7),
  ChartSplineData('Fr', 2),
  ChartSplineData('Sa', 8),
  ChartSplineData('Su', 1)

];

final List<ChartSplineData> chartData2 = <ChartSplineData>[
  ChartSplineData('Mo', 1),
  ChartSplineData('Tu', 2),
  ChartSplineData('We', 3),
  ChartSplineData('Th', 4),
  ChartSplineData('Fr', 8),
  ChartSplineData('Sa', 1),
  ChartSplineData('Su', 3)

];

final List<ChartSplineData> chartData3 = <ChartSplineData>[
  ChartSplineData('Mo', 7),
  ChartSplineData('Tu', 4),
  ChartSplineData('We', 1),
  ChartSplineData('Th', 5),
  ChartSplineData('Fr', 3),
  ChartSplineData('Sa', 6),
  ChartSplineData('Su', 2)

];

final List<ChartSplineData> chartData4 = <ChartSplineData>[
  ChartSplineData('Mo', 4),
  ChartSplineData('Tu', 5),
  ChartSplineData('We', 6),
  ChartSplineData('Th', 8),
  ChartSplineData('Fr', 2),
  ChartSplineData('Sa', 1),
  ChartSplineData('Su', 5)

];

final List<ChartSplineData> chartData5 = <ChartSplineData>[
  ChartSplineData('Mo', 5),
  ChartSplineData('Tu', 5),
  ChartSplineData('We', 3),
  ChartSplineData('Th', 8),
  ChartSplineData('Fr', 1),
  ChartSplineData('Sa', 3),
  ChartSplineData('Su', 8)

];

final List<ChartSplineData> chartData6 = <ChartSplineData>[
  ChartSplineData('Mo', 3),
  ChartSplineData('Tu', 7),
  ChartSplineData('We', 8),
  ChartSplineData('Th', 3),
  ChartSplineData('Fr', 5),
  ChartSplineData('Sa', 2),
  ChartSplineData('Su', 1)

];
