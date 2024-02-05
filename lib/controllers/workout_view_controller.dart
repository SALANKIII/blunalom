import 'package:blunalom/views/exercise_view.dart';
import 'package:blunalom/views/history_view.dart';
import 'package:blunalom/views/measure_view.dart';
import 'package:blunalom/views/profile_view.dart';
import 'package:blunalom/views/workout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutViewController extends GetxController{
  List<String> templateList =[
    "Legs",
    "Pull",
    "Push",
  ];

    void navToProfileView(){
    Get.to(ProfileView());
  }
  void navToHistoryView(){
    Get.to(HistoryView());
  }
  void navToWorkoutView(){
    Get.to(WorkoutView());
  }
  void navToExercisesView(){
    Get.to(ExercisesView());
  }
  void navToMeasureView(){
    Get.to(MeasureView());
  }
  void myTemplates(){
    if (templateList.isEmpty){
      Container(child: Text("You don't have any custom templates yet. Tap the '+' button to create your first template!"),);
    } else {
      ListView(children: [Text(templateList.toString())],);
    }
  }
}