import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/configs/app_size_configs.dart';

class HomeSTF_VN_Screen extends StatefulWidget {
  const HomeSTF_VN_Screen({Key? key}) : super(key: key);

  @override
  State<HomeSTF_VN_Screen> createState() => _HomeSTF_VN_ScreenState();
}

class _HomeSTF_VN_ScreenState extends State<HomeSTF_VN_Screen> {

 ValueNotifier count = ValueNotifier<int>(0);
  ValueNotifier isOpen = ValueNotifier<bool>(false);
  ValueNotifier age = ValueNotifier<double>(20.0);
  ValueNotifier intColor = ValueNotifier<int>(0xffffffff);

  onCountChange({bool forAdd = true}) {
    forAdd ? count.value++ : count.value -= 1;
  }

  onCountHold({bool forAdd = true}) {
    if (forAdd) {
      count.value++;
    } else {
      count.value -= 1;
    }  }

  onTapStatus(boolVal) {
    isOpen.value = boolVal;
  }

  onSlide(val) {
    age.value = val;
  }

  getRandomColor() {
    intColor.value = Random().nextInt(0xffffffff);
  }
  @override
  Widget build(BuildContext context) {
    HeightWidth(context);
    return Scaffold(
      appBar: AppBar(title: Text("GetX App")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Stateful Widget ValueNotifier', style: TextStyle(fontSize: 25)).widgetTest('Stateful Widget ValueNotifier'),
          0.02.ph.widgetTest('first Sized Box'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton.icon(onPressed: () => onCountChange(), 
            onLongPress: () => onCountHold(),
            icon: Icon(Icons.add), label: Text('Add')).widgetTest('Add Elevated Btn'),
            ValueListenableBuilder(
              valueListenable: count,
              builder:(context, value, child) {
                  return Text('${count.value}', style: TextStyle(fontSize: 25)).widgetTest('STF VN count Text');
              }
            ),
            ElevatedButton.icon(onPressed: () => onCountChange(forAdd: false),onLongPress:() => onCountHold(forAdd: false), icon: Icon(Icons.remove), 
            label: Text('Remove')).widgetTest('Remove Elevated Btn'),
          ]),
          0.02.ph.widgetTest('2nd Sized Box'),
          ValueListenableBuilder(
            valueListenable: age,
            builder: (context,value,child) {
              return Row(
                children: [
                  Expanded(flex: 4, child: Slider(value: age.value, onChanged: (value) => onSlide(value), max: 70.0).widgetTest('STF VN Slider')),
                  Expanded(
                    child: Card(
                      child: Text(age.value.toStringAsFixed(0), style: TextStyle(fontSize: 20)).center().widgetTest('STF VN Age'),
                    ).marginOnly(right: 20),
                  )
                ],
              );
            }
          ),
          0.02.ph.widgetTest('3rd Sized Box'),
          ElevatedButton(
            onPressed: ()=>getRandomColor(),
            child: Text('Random Color Generator', style: TextStyle(fontSize: 18))).widgetTest('Color Generator Btn'),

          0.02.ph.widgetTest('4th Sized Box'),
             ValueListenableBuilder(
              valueListenable: intColor,
               builder: (context,value,child) {
                 return Container(height: 80,width: w*0.9,color: Color(intColor.value)).widgetTest('STF VN Random Color box');
               }
             ),
        ],
      ),
    );
  }
}
