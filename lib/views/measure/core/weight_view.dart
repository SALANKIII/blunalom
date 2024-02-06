import 'package:blunalom/controllers/core_controllers/weight_view_controller.dart';
import 'package:blunalom/models/weight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightView extends StatelessWidget {
  WeightView({required this.weightList});
  List<Weight> weightList = [];

  late WeightViewController controller;

  @override
  Widget build(BuildContext context) {
    controller = Get.put(WeightViewController(weightList: weightList));
    return GetBuilder<WeightViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Title(
                      color: Colors.white,
                      child: Text("Weight", style: TextStyle(fontSize: 40))),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("HISTORY",
                          style: TextStyle(
                              letterSpacing: 3, color: Color(0xFFCCCCCC))),
                      IconButton(onPressed: () {
                        controller.navToWeightAddView();
                      }, icon: Icon(Icons.add))
                    ],
                  ),
                ),
                Column(
                  children: controller.getRows(),
                )
              ],
            ),
          );
        });
  }
}
