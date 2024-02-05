import 'package:blunalom/models/weight.dart';
import 'package:blunalom/views/exercise_view.dart';
import 'package:blunalom/views/history_view.dart';
import 'package:blunalom/views/measure/body_parts/chest_view.dart';
import 'package:blunalom/views/measure/body_parts/hips_view.dart';
import 'package:blunalom/views/measure/body_parts/left_bicep_view.dart';
import 'package:blunalom/views/measure/body_parts/left_calf_view.dart';
import 'package:blunalom/views/measure/body_parts/left_forearm_view.dart';
import 'package:blunalom/views/measure/body_parts/left_thigh_view.dart';
import 'package:blunalom/views/measure/body_parts/lower_abs.dart';
import 'package:blunalom/views/measure/body_parts/neck_view.dart';
import 'package:blunalom/views/measure/body_parts/right_bicep_view.dart';
import 'package:blunalom/views/measure/body_parts/right_calf_view.dart';
import 'package:blunalom/views/measure/body_parts/right_forearm_view.dart';
import 'package:blunalom/views/measure/body_parts/right_thigh_view.dart';
import 'package:blunalom/views/measure/body_parts/shoulders_view.dart';
import 'package:blunalom/views/measure/body_parts/upper_abs_view.dart';
import 'package:blunalom/views/measure/body_parts/waist_view.dart';
import 'package:blunalom/views/measure/core/body_fat_percentage_view.dart';
import 'package:blunalom/views/measure/core/caloric_intake_view.dart';
import 'package:blunalom/views/measure/core/weight_add_view.dart';
import 'package:blunalom/views/measure/core/weight_view.dart';
import 'package:blunalom/views/measure_view.dart';
import 'package:blunalom/views/profile_view.dart';
import 'package:blunalom/views/workout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeasureViewController extends GetxController {
  TextEditingController weightController = TextEditingController();
  TextEditingController bodyFatPercentageController = TextEditingController();
  TextEditingController caloricIntakeController = TextEditingController();
  DateTime dateTime = DateTime.now();
  List<Weight> weightList = [];
  void navToWeightAddView() async{
    Weight weight = await Get.to(WeightAddView());
    weightList.add(weight);
    Get.snackbar("${weight.weight}kg", "Succesfully added!");
  }
  void navToWeightView() {
    Get.to(WeightView(weightList: weightList, dateTime: dateTime,));
  }

  void navToProfileView() {
    Get.to(ProfileView());
  }

  void navToHistoryView() {
    Get.to(HistoryView());
  }

  void navToWorkoutView() {
    Get.to(WorkoutView());
  }

  void navToExercisesView() {
    Get.to(ExercisesView());
  }

  void navToMeasureView() {
    Get.to(MeasureView());
  }

  void navToBodyFatPercentageView() {
    Get.to(BodyFatPercentageView());
  }

  void navToCaloricIntakeView() {
    Get.to(CaloricIntakeView());
  }

  void navToNeckView() {
    Get.to(NeckView());
  }

  void navToShouldersView() {
    Get.to(ShouldersView());
  }

  void navToChestView() {
    Get.to(ChestView());
  }

  void navToLeftBicepsView() {
    Get.to(LeftBicepView());
  }

  void navToRightBicepsView() {
    Get.to(RightBicepView());
  }

  void navToLeftForearmView() {
    Get.to(LeftForearmView());
  }

  void navToRightForearmView() {
    Get.to(RightForearmView());
  }

  void navToUpperAbsView() {
    Get.to(UpperAbsView());
  }

  void navToWaistView() {
    Get.to(WaistView());
  }

  void navToLowerAbsView() {
    Get.to(LowerAbsView());
  }

  void navToHipsView() {
    Get.to(HipsView());
  }

  void navToLeftThighView() {
    Get.to(LeftThighView());
  }

  void navToRightThighView() {
    Get.to(RightThighView());
  }

  void navToLeftCalfView() {
    Get.to(LeftCalfView());
  }

  void navToRightCalfView() {
    Get.to(RightCalfView());
  }
}
