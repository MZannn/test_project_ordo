import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:test_project_ordo/app/constants/color_constants.dart';
import 'package:test_project_ordo/app/themes/text_themes.dart';

class CardRecentLead extends StatelessWidget {
  const CardRecentLead({
    super.key,
    required this.name,
    required this.date,
    required this.image,
    required this.statusLead,
    required this.totalMoney,
  });
  final String name;
  final String date;
  final String image;
  final String statusLead;
  final String totalMoney;
  @override
  Widget build(BuildContext context) {
    final textTheme = Themes.light.textTheme;
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 9,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 45,
            height: 45,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SvgPicture.asset(
                  image,
                  fit: BoxFit.cover,
                )),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 22,
                width: 83,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: statusLead == "New"
                      ? ColorConstants.purple
                      : statusLead == "Hot"
                          ? ColorConstants.lightRed
                          : ColorConstants.orange,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 10,
                      width: 10,
                      child: SvgPicture.asset(
                        statusLead == "New"
                            ? 'assets/icons/star.svg'
                            : statusLead == "Hot"
                                ? 'assets/icons/fire.svg'
                                : 'assets/icons/ice.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '$statusLead Lead',
                      style: textTheme.titleMedium!.copyWith(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                totalMoney,
                style: textTheme.titleSmall!.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
