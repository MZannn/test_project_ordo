import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:test_project_ordo/app/constants/color_constants.dart';
import 'package:test_project_ordo/app/themes/text_themes.dart';

class CardLeaderboard extends StatelessWidget {
  const CardLeaderboard({
    super.key,
    required this.leaderBoardNumber,
    required this.name,
    required this.date,
    required this.totalDeals,
    required this.image,
  });
  final int leaderBoardNumber;
  final String name;
  final String date;
  final int totalDeals;
  final String image;
  @override
  Widget build(BuildContext context) {
    final textTheme = Themes.light.textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),
      child: Row(
        children: [
          Text(
            leaderBoardNumber.toString(),
            style: textTheme.titleLarge,
          ),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SvgPicture.asset(image, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: textTheme.titleSmall,
                ),
                Row(
                  children: [
                    Icon(
                      IconlyLight.calendar,
                      color: ColorConstants.gray2,
                      size: 11,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      date,
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: totalDeals.toString(),
              style: textTheme.titleSmall!.copyWith(
                color: ColorConstants.mainPurple,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: " Deals",
                  style: textTheme.bodySmall!.copyWith(
                    color: ColorConstants.gray2,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
