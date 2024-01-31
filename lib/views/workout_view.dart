import 'package:blunalom/controllers/workout_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutView extends StatelessWidget {
  WorkoutViewController controller = Get.put(WorkoutViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
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
  }
}