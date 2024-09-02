import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/configs/app_size_configs.dart';

class HomeSTFScreen extends StatefulWidget {
  const HomeSTFScreen({Key? key}) : super(key: key);

  @override
  State<HomeSTFScreen> createState() => _HomeSTFScreenState();
}

class _HomeSTFScreenState extends State<HomeSTFScreen> {

 var count = 0;
  var isOpen = false;
  var age = 20.0;
  var intColor = 0xffffffff;

  onCountChange({bool forAdd = true}) {
    forAdd ? count++ : count -= 1;
    setState((){});
  }

  onCountHold({bool forAdd = true}) {
    if (forAdd) {
      count++;
    } else {
      count -= 1;
    }

    setState((){});
  }

  onTapStatus(boolVal) {
    isOpen = boolVal;
    setState((){});
  }

  onSlide(val) {
    age = val;
    setState((){});
  }

  getRandomColor() {
    intColor = Random().nextInt(0xffffffff);
    setState((){});
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
          Text('Stateful Widget', style: TextStyle(fontSize: 25)).widgetTest('Stateful Widget'),
          0.02.ph.widgetTest('first Sized Box'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton.icon(onPressed: () => onCountChange(), 
            onLongPress: () => onCountHold(),
            icon: Icon(Icons.add), label: Text('Add')).widgetTest('Add Elevated Btn'),
            Text('${count}', style: TextStyle(fontSize: 25)).widgetTest('STF count Text'),
            ElevatedButton.icon(onPressed: () => onCountChange(forAdd: false),onLongPress:() => onCountHold(forAdd: false), icon: Icon(Icons.remove), 
            label: Text('Remove')).widgetTest('Remove Elevated Btn'),
          ]),
          0.02.ph.widgetTest('2nd Sized Box'),
          Row(
            children: [
              Expanded(flex: 4, child: Slider(value: age, onChanged: (value) => onSlide(value), max: 70.0).widgetTest('STF Slider')),
              Expanded(
                child: Card(
                  child: Text(age.toStringAsFixed(0), style: TextStyle(fontSize: 20)).center().widgetTest('STF Age'),
                ).marginOnly(right: 20),
              )
            ],
          ),
          0.02.ph.widgetTest('3rd Sized Box'),
          ElevatedButton(
            onPressed: ()=>getRandomColor(),
            child: Text('Random Color Generator', style: TextStyle(fontSize: 18))).widgetTest('Color Generator Btn'),

          0.02.ph.widgetTest('4th Sized Box'),
             StatefulBuilder(
               builder: (context,myState) {
                 return Container(height: 80,width: w*0.9,color: Color(intColor)).widgetTest('STF Random Color box');
               }
             ),
        ],
      ),
    );
  }
}
