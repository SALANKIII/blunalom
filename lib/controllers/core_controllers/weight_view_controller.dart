import 'package:blunalom/models/weight.dart';
import 'package:blunalom/views/measure/core/weight_add_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightViewController extends GetxController {
  WeightViewController({required this.weightList});
  List<Weight> weightList;

  void navToWeightAddView() async {
    Weight weight = await Get.to(WeightAddView());
    weightList.add(weight);
    Get.snackbar("${weight.weight}kg", "Succesfully added!");
    update();
  }

  List<Widget> getRows() {
    List<Widget> temp = [];

    for (Weight weight in weightList.reversed) {
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${weight.weight.toString()}kg",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("${weight.date.toString().split(' ')}",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
        ),
      );
      update();
    }
    return temp;
  }
}
