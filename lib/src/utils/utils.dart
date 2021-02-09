import 'package:flutter/material.dart';

Color hexaToColor(String colorHexa) {
  if (colorHexa.length == 5)
    colorHexa = '0' + colorHexa;
  else if (colorHexa.length == 4)
    colorHexa = '00' + colorHexa;
  else if (colorHexa.length == 3)
    colorHexa = '000' + colorHexa;
  else if (colorHexa.length == 2)
    colorHexa = '0000' + colorHexa;
  else if (colorHexa.length == 1)
    colorHexa = '00000' + colorHexa;
  else if (colorHexa.length == 0) colorHexa = '000000' + colorHexa;

  //if clarito
  //color letra negro
  //else
  //color letra blanco

  String r = colorHexa.substring(0, 2);
  String g = colorHexa.substring(2, 4);
  String b = colorHexa.substring(4, 6);
  int rInt = int.parse(r, radix: 16);
  int gInt = int.parse(g, radix: 16);
  int bInt = int.parse(b, radix: 16);
  return Color.fromARGB(255, rInt, gInt, bInt);
}
