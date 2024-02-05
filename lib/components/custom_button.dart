import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.text,
    required this.onPressed,
    required this.background,
  });

  Function() onPressed;
  String text;
  Color background;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        child: CupertinoButton(
          padding: EdgeInsets.zero,
          color: background,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(text),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
