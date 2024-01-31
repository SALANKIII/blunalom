import 'package:blunalom/controllers/workout_view_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutView extends StatelessWidget {
  WorkoutViewController controller = Get.put(WorkoutViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WorkoutViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Workout",
                style: TextStyle(fontSize: 27),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("QUICK START",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFCCCCCC),
                              letterSpacing: 2)),
                    ],
                  ),
                  SizedBox(height: 15),
                  CupertinoButton.filled(
                      child: Text(
                        "START AN EMPTY WORKOUT",
                        style: TextStyle(letterSpacing: 2, fontSize: 12),
                      ),
                      onPressed: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MY TEMPLATES",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFCCCCCC),
                          letterSpacing: 2,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: Text(
                        "You don't have any custom templates yet. Tap the '+' button to create your first template!",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ), //ez lesz a lista
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "SAMPLE TEMPLATES",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFCCCCCC),
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Column(children: [Container()],)
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
