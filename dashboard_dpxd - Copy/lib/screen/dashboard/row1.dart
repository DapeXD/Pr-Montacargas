import 'package:dashboard_dpxd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Row1 extends StatelessWidget {
  const Row1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        containerRing(
          percent: 0.7,
          number: '70%',
          title1: 'Productividad',
          title2: '40',
          title3: '+3.7',
          title4: '/60',
          title5: ' minutes',
          gradientStart: Color(0xFF526ADA),
          gradientMiddle: Color(0xFF526ADA),
          gradientEnd: Color(0xFF78E5E7)
        ),
        SizedBox(
          width: defaultPadding,
        ),
        containerRing(
          percent: 0.5,
          number: '50%',
          title1: 'Trabajo / Fecha',
          title2: '30',
          title3: '-6 %',
          title4: '/25',
          title5: ' Km',
          gradientStart: Color(0xFF526ADA),
          gradientMiddle: Color(0xFF78E5E7),
          gradientEnd: Color(0xFF7EF94E)
        ),
        SizedBox(
          width: defaultPadding,
        ),
        containerRing(
          percent: 1,
          number: '100%',
          title1: 'Eficiencia',
          title2: '60',
          title3: '+2.7 %',
          title4: '/60',
          title5: ' minutes',
          gradientStart: Color(0xFF9B3AD8),
          gradientMiddle: Color(0xFF526ADA),
          gradientEnd: Color(0xFFC25E84)
        ),
        SizedBox(
          width: defaultPadding,
        ),
        containerRing(
          percent: 0.16,
          number: '16%',
          title1: 'Horas / Trabajo',
          title2: '4',
          title3: '+7 %',
          title4: '/25',
          title5: ' Km',
          gradientStart: Color(0xFF526ADA),
          gradientMiddle: Color(0xFF78E5E7),
          gradientEnd: Color(0xFF7EF94E)
        ),
      ],
    );
  }
}

class containerRing extends StatelessWidget {
  const containerRing({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.number,
    required this.percent,
    required this.gradientStart,
    required this.gradientMiddle,
    required this.gradientEnd, required this.title4, required this.title5,
  });

  final String title1, title2, title3, title4, title5, number;
  final double percent;
  final Color gradientStart, gradientMiddle, gradientEnd;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        height: 175,
        width: 280,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(
                        text: title2,
                        style: GoogleFonts.raleway(color: Colors.white),
                        children: <TextSpan>[
                      TextSpan(
                          text: title4,
                          style: GoogleFonts.raleway(
                              color: Colors.white54,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: title5,
                          style: GoogleFonts.raleway(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ])),
                Spacer(),
                Text(
                  title3,
                  style: GoogleFonts.raleway(
                      color: title3[0] == '-' ? Colors.red : Colors.green,
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'from last week',
                  style: GoogleFonts.raleway(
                      color: Colors.white54,
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              width: defaultPadding,
            ),
            SizedBox(
              child: CircularPercentIndicator(
                radius: 55,
                lineWidth: 14,
                percent: percent,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: bgColor,
                linearGradient: LinearGradient(colors: [
                  gradientStart,
                  gradientMiddle,
                  gradientEnd
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                center: Text(
                  number,
                  style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w800),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}