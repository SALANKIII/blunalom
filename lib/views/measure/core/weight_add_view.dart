import 'package:blunalom/components/custom_bottom_sheet.dart';
import 'package:blunalom/components/custom_button.dart';
import 'package:blunalom/controllers/core_controllers/weight_add_view_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightAddView extends StatelessWidget {
  WeightAddViewController controller = WeightAddViewController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeightAddViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(),
            body: Column(children: [
              TextField(
                controller: controller.weight,
              ),
              
              Container(
                height: 150,
                child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  mode: CupertinoDatePickerMode.date,
                  dateOrder: DatePickerDateOrder.ymd,
                  use24hFormat: true,
                  onDateTimeChanged: (date) {
                    controller.setDateTime(date);
                  },
                ),
              ),
              CupertinoButton(
                  color: Colors.blue,
                  child: Text("Save changes"),
                  onPressed: () {
                    controller.rogzites();
                  }),
            ]),
        );
      }
    );
  }
}