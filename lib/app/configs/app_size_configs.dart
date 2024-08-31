// For Global MediaQuery ------------------------------
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

late double w, h;

void HeightWidth(BuildContext context) {
  h = MediaQuery.of(context).size.height;
  w = MediaQuery.of(context).size.width;
}

// For SizedBox Extension -----------------------------------

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
        height: h * toDouble(),
      );
  SizedBox get pw => SizedBox(
        width: w * toDouble(),
      );
}

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');

  DateTime toDateTime() {
    return DateTime.parse(this);
  }
}

extension WidgetsExt on Widget {
  Widget center() =>
     Center(child: this);
  

  Widget padding({EdgeInsetsGeometry padding = const EdgeInsets.all(0.0)}) {
    return Padding(padding: padding, child: this);
  }

  Widget fittedBox(double w, [BoxFit fit = BoxFit.scaleDown]) {
    return SizedBox(
      // height: h,
      width: w,
      child: FittedBox(fit: fit, child: this),
    );
  }
  Widget expanded([int flex = 1])=>
     Expanded(flex: flex,child: this);
  

Widget widgetTest(String msg){
  print('**** ------------  '+ msg);
    return this;
  }
}