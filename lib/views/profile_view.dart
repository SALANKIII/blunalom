import 'package:blunalom/controllers/profile_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  ProfileViewController controller = Get.put(ProfileViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 27),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.settings))
              ],
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      //profilepic
                      Icon(
                        Icons.person,
                        size: 40,
                      ),
                      //name and data
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text("Name"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0 workouts"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("DASHBOARD",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFCCCCCC),
                          letterSpacing: 2)),
                  SizedBox(
                    height: 20,
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
