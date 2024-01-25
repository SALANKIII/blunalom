import 'package:blunalom/views/measure/body_fat_percentage_view.dart';
import 'package:blunalom/views/measure/caloric_intake_view.dart';
import 'package:blunalom/views/measure/weight_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeasureViewController extends GetxController{
  TextEditingController weightController = TextEditingController();
  TextEditingController bodyFatPercentageController = TextEditingController();
  TextEditingController caloricIntakeController = TextEditingController();

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