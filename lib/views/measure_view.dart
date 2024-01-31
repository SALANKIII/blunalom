import 'package:blunalom/controllers/measure_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeasureView extends StatelessWidget {
  MeasureViewController controller = Get.put(MeasureViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MeasureViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Measure", style: TextStyle(fontSize: 40)),
                  SizedBox(height: 10),
                  Text("Core",
                      style: TextStyle(fontSize: 18, color: Color(0xFFCCCCCC))),
                  SizedBox(height: 5),
                  TextButton(
                      onPressed: () {
                        controller.navToWeightView();
                      },
                      child: Text("Weight",
                          style: TextStyle(fontSize: 25, color: Colors.white))),
                  SizedBox(height: 5),
                  Text(
                    controller.weightController.text,
                    style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                  ),
                  SizedBox(height: 5),
                  TextButton(
                      onPressed: () {
                        controller.navToBodyFatPercentageView();
                      },
                      child: Text("Body fat percentage",
                          style: TextStyle(fontSize: 25, color: Colors.white))),
                  Text(
                    controller.bodyFatPercentageController.text,
                    style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                  ),
                  SizedBox(height: 5),
                  TextButton(
                      onPressed: () {
                        controller.navToCaloricIntakeView();
                      },
                      child: Text("Caloric intake",
                          style: TextStyle(fontSize: 25, color: Colors.white))),
                  Text(
                    controller.caloricIntakeController.text,
                    style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          controller.navToProfileView();
                        },
                        icon: Icon(
                          Icons.person,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {
                          controller.navToHistoryView();
                        },
                        icon: Icon(
                          Icons.access_time,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {
                          controller.navToWorkoutView();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {
                          controller.navToExercisesView();
                        },
                        icon: Icon(
                          Icons.fitness_center,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {
                          controller.navToMeasureView();
                        },
                        icon: Icon(
                          Icons.accessibility,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
