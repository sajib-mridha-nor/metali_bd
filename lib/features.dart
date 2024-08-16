import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'metali/color_schemes.g.dart';

TextStyle kHeaderStyle() => const TextStyle(fontSize: 18);
Color fillColor = Color.fromARGB(255, 240, 241, 240);
TextStyle k16TextStyle() => const TextStyle(fontSize: 16);
TextStyle k18BoldStyle() => const TextStyle(fontSize: 18,fontWeight: FontWeight.bold);
TextStyle kSMallTextStyle() => const TextStyle(fontSize: 14);
TextStyle kAppBarStyle() => const TextStyle(fontFamily: "Inter", fontWeight: FontWeight.bold);

BoxDecoration kContainerDesign(ColorScheme clr, double fem) {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: const Alignment(-1, 0.114),
      end: const Alignment(1, 0.106),
      colors: <Color>[
        clr.onPrimary,clr.secondaryContainer
      ],
      stops: <double>[0, 1],
    ),
    boxShadow: [
      BoxShadow(
        color: const Color(0x3f000000),
        offset: Offset(0*fem, 4*fem),
        blurRadius: 2*fem,
      ),
      BoxShadow(
        color: const Color(0x3f000000),
        offset: Offset(0*fem, 4*fem),
        blurRadius: 2*fem,
      ),
    ],
  );
}
