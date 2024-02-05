import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  CustomBottomSheet({required this.children});
  List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 40,
              child: Divider(color: Colors.white),
            ),
          ),
          Column(children: children)
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xFF272727),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
    );
  }
}
