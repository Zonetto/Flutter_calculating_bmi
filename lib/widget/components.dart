import 'package:flutter/material.dart';

Widget defaltButton({
  double width = double.infinity,
  double height = 60,
  Color background = Colors.lightBlue,
  required onPressed,
  required String text,
  double radius = 0.0,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      width: width,
      // color: background,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
