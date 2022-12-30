import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray50 = fromHex('#e8eff3');

  static Color blueA700 = fromHex('#2d5cff');

  static Color deepOrange40001 = fromHex('#f3664b');

  static Color deepPurple400 = fromHex('#6958dd');

  static Color blueGray30033 = fromHex('#339ea6be');

  static Color blueA200 = fromHex('#3887fc');

  static Color deepOrange50063 = fromHex('#63fa662e');

  static Color greenA700 = fromHex('#1baf5e');

  static Color amberA700 = fromHex('#ffa902');

  static Color black900 = fromHex('#011713');

  static Color deepOrange600 = fromHex('#f0512e');

  static Color redA400 = fromHex('#ff2525');

  static Color deepOrange500 = fromHex('#fa662e');

  static Color blueGray900 = fromHex('#2f3733');

  static Color deepOrange400 = fromHex('#ff8b38');

  static Color yellow100 = fromHex('#ffedcc');

  static Color black9004c = fromHex('#4c000000');

  static Color tealA700 = fromHex('#0fc4a9');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray400 = fromHex('#7d8fab');

  static Color blue800 = fromHex('#024fc7');

  static Color indigo50 = fromHex('#e8ecf2');

  static Color blue600 = fromHex('#1089de');

  static Color gray100 = fromHex('#f3f6fa');

  static Color blueGray20033 = fromHex('#33b8bbc6');

  static Color gray10002 = fromHex('#f1f1f4');

  static Color indigo100 = fromHex('#bec9d9');

  static Color gray10001 = fromHex('#f3f6fb');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
