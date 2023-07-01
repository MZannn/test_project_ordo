import 'package:flutter/material.dart';
import 'package:test_project_ordo/app/constants/color_constants.dart';

class PerformanceIndicatorModel {
  String keyPerformance;
  int total;
  num percentage;
  Color color;
  String image;
  PerformanceIndicatorModel({
    required this.keyPerformance,
    required this.total,
    required this.percentage,
    required this.color,
    required this.image,
  });
}

List<PerformanceIndicatorModel> performanceIndicatorModel = [
  PerformanceIndicatorModel(
    keyPerformance: 'Total Lead',
    total: 57,
    percentage: 3.5,
    color: ColorConstants.lightPurple100,
    image: 'assets/icons/total_lead.svg',
  ),
  PerformanceIndicatorModel(
    keyPerformance: 'Hot Lead',
    total: 28,
    percentage: -1.25,
    color: ColorConstants.lightRed,
    image: 'assets/icons/fire.svg',
  ),
  PerformanceIndicatorModel(
    keyPerformance: 'Total Deals',
    total: 100,
    percentage: 0,
    color: ColorConstants.green1,
    image: 'assets/icons/check.svg',
  ),
  PerformanceIndicatorModel(
    keyPerformance: 'Grand Opening',
    total: 150,
    percentage: 3.5,
    color: ColorConstants.green2,
    image: 'assets/icons/flag.svg',
  ),
  PerformanceIndicatorModel(
    keyPerformance: 'Cold Lead',
    total: 45,
    percentage: 3.5,
    color: const Color(0xFF287EFF),
    image: 'assets/icons/ice.svg',
  ),
  PerformanceIndicatorModel(
    keyPerformance: 'Failed Deal',
    total: 13,
    percentage: 3.5,
    color: ColorConstants.red,
    image: 'assets/icons/failed.svg',
  ),
];
