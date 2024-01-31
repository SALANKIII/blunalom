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
    Get.to(ProfileView(), transition: Transition.cupertino);
  }
  void navToHistoryView(){
    Get.to(HistoryView(), transition: Transition.cupertino);
  }
  void navToWorkoutView(){
    Get.to(WorkoutView(), transition: Transition.cupertino);
  }
  void navToExercisesView(){
    Get.to(ExercisesView(), transition: Transition.cupertino);
  }
  void navToMeasureView(){
    Get.to(MeasureView(), transition: Transition.cupertino);
  }
  void myTemplates(){
    if (templateList.isEmpty){
      Container(child: Text("You don't have any custom templates yet. Tap the '+' button to create your first template!"),);
    } else {
      ListView(children: [Text(templateList.toString())],);
    }
  }
}