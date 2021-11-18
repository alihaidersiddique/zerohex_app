import 'package:flutter/material.dart';


// ignore: camel_case_types
class OnboardingModel {
  String title;
  String description;
  Color titleColor;
  Color descripColor;
  String imagePath;

  OnboardingModel({
    @required this.title,
    @required this.description,
    @required this.imagePath,
    @required this.titleColor,
    @required this.descripColor,
  });
}