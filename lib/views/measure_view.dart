import 'package:blunalom/controllers/measure_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeasureView extends StatelessWidget {
  MeasureViewController controller = Get.put(MeasureViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MeasureViewController>(
      init: controller,
      builder(_){
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Measure", style: TextStyle(fontSize: 40)),
                SizedBox(height: 10),
                Text("Core", style: TextStyle(fontSize: 18, color: Color(0xFFCCCCCC))),
                SizedBox(height: 5),
                TextButton(onPressed: () {controller.navToWeightView();}, child: Text("Weight", style: TextStyle(fontSize: 25, color: Colors.white),)),
                SizedBox(height: 5),
                Text(
                  controller.weightController.text,
                  style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                ),
                SizedBox(height: 5),
                TextButton(onPressed: () {controller.navToBodyFatPercentageView();}, child: Text("Body fat percentage", style: TextStyle(fontSize: 25, color: Colors.white),)),
                Text(
                  controller.bodyFatPercentageController.text,
                  style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                ),
                SizedBox(height: 5),
                TextButton(onPressed: () {controller.navToCaloricIntakeView();}, child: Text("Caloric intake", style: TextStyle(fontSize: 25, color: Colors.white),)),
                Text(
                  controller.caloricIntakeController.text,
                  style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
