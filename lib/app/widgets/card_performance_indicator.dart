import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_project_ordo/app/constants/color_constants.dart';
import 'package:test_project_ordo/app/themes/text_themes.dart';

class CardPerformanceIndicator extends StatelessWidget {
  const CardPerformanceIndicator({
    super.key,
    required this.color,
    required this.performanceIndicator,
    required this.total,
    required this.percentage,
    required this.image,
  });
  final String performanceIndicator;
  final Color color;
  final int total;
  final num percentage;
  final String image;
  @override
  Widget build(BuildContext context) {
    final textTheme = Themes.light.textTheme;
    return Container(
      width: 130,
      height: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorConstants.gray1,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                margin: const EdgeInsets.only(right: 5),
                padding: const EdgeInsets.all(3.8),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Text(
                performanceIndicator,
                style: textTheme.bodySmall!.copyWith(
                  fontSize: 10,
                  color: ColorConstants.black,
                ),
              ),
            ],
          ),
          Text(
            total.toString(),
            style: textTheme.titleLarge!.copyWith(
              fontSize: 27,
              color: ColorConstants.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Last month",
                style: textTheme.bodySmall,
              ),
              Text(
                percentage < 0 ? "$percentage%" : "+$percentage%",
                style: textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: percentage < 0
                      ? ColorConstants.red
                      : ColorConstants.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
