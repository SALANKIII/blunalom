import 'package:blunalom/controllers/measure_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeasureView extends StatelessWidget {
  MeasureViewController controller = MeasureViewController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MeasureViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Measure",
                style: TextStyle(fontSize: 27),
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text("CORE",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFCCCCCC),
                            letterSpacing: 2)),
                    SizedBox(height: 15),
                    TextButton(
                        onPressed: () {
                          controller.navToWeightView();
                        },
                        child: Text("Weight",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.weightController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                        onPressed: () {
                          controller.navToBodyFatPercentageView();
                        },
                        child: Text("Body Fat Percentage",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                        onPressed: () {
                          controller.navToCaloricIntakeView();
                        },
                        child: Text("Caloric Intake",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.caloricIntakeController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    SizedBox(height: 15),
                    Text("BODY PARTS",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFCCCCCC),
                            letterSpacing: 2)),
                    SizedBox(height: 10),
                    TextButton(
                        onPressed: () {
                          controller.navToNeckView();
                        },
                        child: Text("Neck",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToShouldersView();
                        },
                        child: Text("Shoulders",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToChestView();
                        },
                        child: Text("Chest",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    SizedBox(height: 5),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToLeftBicepsView();
                        },
                        child: Text("Left Bicep",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                        onPressed: () {
                          controller.navToRightBicepsView();
                        },
                        child: Text("Right Bicep",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    SizedBox(height: 5),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToLeftForearmView();
                        },
                        child: Text("Left Forearm",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                        onPressed: () {
                          controller.navToRightForearmView();
                        },
                        child: Text("Right Forearm",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    SizedBox(height: 5),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToUpperAbsView();
                        },
                        child: Text("Upper Abs",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                        onPressed: () {
                          controller.navToWaistView();
                        },
                        child: Text("Waist",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    SizedBox(height: 5),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToLowerAbsView();
                        },
                        child: Text("Lower Abs",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                        onPressed: () {
                          controller.navToHipsView();
                        },
                        child: Text("Hips",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    SizedBox(height: 5),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToLeftThighView();
                        },
                        child: Text("Left Thigh",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                        onPressed: () {
                          controller.navToRightThighView();
                        },
                        child: Text("Right Thigh",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    SizedBox(height: 5),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToLeftCalfView();
                        },
                        child: Text("Left Calf",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navToRightCalfView();
                        },
                        child: Text("Right Calf",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                    Text(
                      controller.bodyFatPercentageController.text,
                      style: TextStyle(fontSize: 25, color: Color(0xFFCCCCCC)),
                    ),
                  ],
                ),
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
