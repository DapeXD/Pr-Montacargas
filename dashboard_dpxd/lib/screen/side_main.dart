// ignore_for_file: non_constant_identifier_names

import 'package:dashboard_dpxd/models/main_side.dart';
import 'package:dashboard_dpxd/models/main_side_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class SideMain extends StatefulWidget {
  const SideMain({super.key});

  @override
  State<SideMain> createState() => _SideMainState();
}

class _SideMainState extends State<SideMain> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: primaryColor, boxShadow: [
        BoxShadow(
            color: Colors.black87,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 5))
      ]),
      child: Column(
        children: [
          const SizedBox(
            height: defaultPadding * 2,
          ),
          Container(
            height: 50,
            width: 100,
            child: Text(
              'DapeXD',
              style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: defaultPadding * 2,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: demoMainSide.length,
                itemBuilder: (context, index) {
                  return ListTitle1(index, demoMainSide[index]);
                }),
          ),
          const SizedBox(
            height: defaultPadding * 2,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
                itemCount: demoMainSideSetting.length,
                itemBuilder: (context, index) {
                  return ListTitle2(index, demoMainSideSetting[index]);
                }),
          ),
        ],
      ),
    );
  }

  Container ListTitle1(int index, MainSide mainSide) {
    return Container(
      decoration: BoxDecoration(
          color: _selectedIndex == index
              ? const Color(0xFFCCEDDD)
              : Colors.transparent,
          gradient: const LinearGradient(
              colors: [Color(0xFF58D9D9), Color(0xFF5747EF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: ListTile(
        hoverColor: const Color(0xFFCCEDDD),
        onTap: () {
          setState(() {
            _selectedIndex = mainSide.index;
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding * 1.5),
          child: SizedBox(
            height: 30,
            width: 30,
            child: Icon(
              mainSide.icon,
              color: _selectedIndex == index
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
        title: Text(
          mainSide.title,
          style: GoogleFonts.raleway(
              color: _selectedIndex == index
                  ? Colors.black
                  : Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Container ListTitle2(int index, MainSideSetting mainSideSetting) {
    return Container(
        decoration: BoxDecoration(
            color: _selectedIndex == index + 5
                ? const Color(0xFFCCEDDD)
                : Colors.transparent,
            gradient: const LinearGradient(
                colors: [Color(0xFF58D9D9), Color(0xFF5747EF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: ListTile(
          hoverColor: const Color(0xFFCCEDDD),
          onTap: () {
            setState(() {
              _selectedIndex = mainSideSetting.index;
            });
          },
          leading: Padding(
            padding: const EdgeInsets.only(left: defaultPadding * 1.5),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                mainSideSetting.icon,
                color: _selectedIndex == index + 5
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
          title: Text(
            mainSideSetting.title,
            style: GoogleFonts.raleway(
                color: _selectedIndex == index + 5
                    ? Colors.black
                    : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
