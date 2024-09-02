import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/configs/app_size_configs.dart';
import 'package:getx_app/presentation/home/home_obx/home_obx_controller.dart';

class HomeOBXScreen extends GetView<OBXHomeController> {
  const HomeOBXScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HeightWidth(context);
    final _ = controller;
    return Scaffold(
      appBar: AppBar(title: Text("GetX App")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('OBX', style: TextStyle(fontSize: 25)).widgetTest('OBX Title'),
          0.02.ph.widgetTest('first Sized Box'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton.icon(onPressed: () => _.onCountChange(), 
            onLongPress: () => _.onCountHold(),
            icon: Icon(Icons.add), label: Text('Add')).widgetTest('Add Elevated Btn'),
            Obx(() => Text('${_.count.value}', style: TextStyle(fontSize: 25)).widgetTest('Obx count Text')),
            ElevatedButton.icon(onPressed: () => _.onCountChange(forAdd: false),onLongPress:() => _.onCountHold(forAdd: false), icon: Icon(Icons.remove), 
            label: Text('Remove')).widgetTest('Remove Elevated Btn'),
          ]),
          0.02.ph.widgetTest('2nd Sized Box'),
          Row(
            children: [
              Expanded(flex: 4, child: Obx(()=> Slider(value: _.age.value, onChanged: (value) => _.onSlide(value), max: 70.0).widgetTest('Obx Slider'))),
              Expanded(
                child: Card(
                  child: Obx(()=> Text(_.age.toStringAsFixed(0), style: TextStyle(fontSize: 20)).center().widgetTest('Obx Age')),
                ).marginOnly(right: 20),
              )
            ],
          ),
          0.02.ph.widgetTest('3rd Sized Box'),
          ElevatedButton(
            onPressed: ()=>_.getRandomColor(),
            child: Text('Random Color Generator', style: TextStyle(fontSize: 18))).widgetTest('Color Generator Btn'),

          0.02.ph.widgetTest('4th Sized Box'),
             Obx(()=>Container(height: 80,width: w*0.9,color: Color(_.intColor.value)).widgetTest('Obx Random Color box')),
        ],
      ),
    );
  }
}
