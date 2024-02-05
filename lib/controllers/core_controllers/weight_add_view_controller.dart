import 'package:blunalom/models/weight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightAddViewController extends GetxController {
  TextEditingController weight = TextEditingController();
  DateTime datetime = DateTime.now();

  void kiurites() {
    weight.clear();
  }

  void rogzites() {
    Get.back(
      result: Weight(
        weight: weight.value.text,
        date: datetime,
      ),
    );
    update();
  }
}
