import 'package:blunalom/views/exercise_view.dart';
import 'package:blunalom/views/history_view.dart';
import 'package:blunalom/views/measure/body_fat_percentage_view.dart';
import 'package:blunalom/views/measure/caloric_intake_view.dart';
import 'package:blunalom/views/measure/weight_view.dart';
import 'package:blunalom/views/measure_view.dart';
import 'package:blunalom/views/profile_view.dart';
import 'package:blunalom/views/workout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeasureViewController extends GetxController{
  TextEditingController weightController = TextEditingController();
  TextEditingController bodyFatPercentageController = TextEditingController();
  TextEditingController caloricIntakeController = TextEditingController();

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

  void navToWeightView(){
    Get.to(WeightView());
  }
  void navToBodyFatPercentageView(){
    Get.to(BodyFatPercentageView());
  }
  void navToCaloricIntakeView(){
    Get.to(CaloricIntakeView());
  }
}