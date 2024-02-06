import 'package:blunalom/models/weight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightAddViewController extends GetxController {
  TextEditingController weight = TextEditingController();

  void kiurites() {
    weight.clear();
  }

  void rogzites() {
    DateTime date= DateTime.now();
    print(date);
    Get.back(
      result: Weight(
        weight: weight.value.text,
        date:date,
      ),
    );
    update();
  }
}
