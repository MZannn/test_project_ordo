import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:test_project_ordo/app/constants/color_constants.dart';
import 'package:test_project_ordo/app/models/bottom_app_bar_item.dart';
import 'package:test_project_ordo/app/models/leaderboard_model.dart';
import 'package:test_project_ordo/app/models/performance_indicator_model.dart';
import 'package:test_project_ordo/app/themes/text_themes.dart';
import 'package:test_project_ordo/app/widgets/button_app_bar.dart';
import 'package:test_project_ordo/app/widgets/card_leaderboard.dart';
import 'package:test_project_ordo/app/widgets/card_performance_indicator.dart';
import 'package:test_project_ordo/app/widgets/card_recent_lead.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = Themes.light.textTheme;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 93,
        decoration: BoxDecoration(
          color: ColorConstants.darkPurple,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: bottomAppBarItem
              .map(
                (e) => ButtonAppBar(
                  title: e.title,
                  icon: e.icon,
                ),
              )
              .toList(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: ColorConstants.mainPurple,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyBold.notification,
            ),
          ),
          Container(
            height: 30,
            width: 30,
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.only(right: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/200/300"),
            ),
          )
        ],
        title: Text(
          "Dashboard",
          style: textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 310,
              decoration: BoxDecoration(
                color: ColorConstants.mainPurple,
                image: const DecorationImage(
                  image: AssetImage('assets/images/section.png'),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.mainPurple,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/performance.svg'),
                        const SizedBox(width: 6),
                        Text(
                          "Key Performance Indicator",
                          style: textTheme.titleSmall,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CardPerformanceIndicator(
                              performanceIndicator:
                                  performanceIndicatorModel[index]
                                      .keyPerformance,
                              color: performanceIndicatorModel[index].color,
                              total: performanceIndicatorModel[index].total,
                              percentage:
                                  performanceIndicatorModel[index].percentage,
                              image: performanceIndicatorModel[index].image,
                            ),
                          );
                        },
                        itemCount: performanceIndicatorModel.length,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Lead",
                          style: textTheme.titleSmall,
                        ),
                        Container(
                          width: 19,
                          height: 19,
                          decoration: BoxDecoration(
                            color: ColorConstants.darkPurple.withOpacity(
                              0.1,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ColorConstants.mainPurple,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CardRecentLead(
                          name: leaderboardModel[index].name,
                          image: leaderboardModel[index].image,
                          date: leaderboardModel[index].date,
                          statusLead: leaderboardModel[index].statusLead,
                          totalMoney: leaderboardModel[index].totalMoney,
                        );
                      },
                      itemCount: leaderboardModel.length - 2,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Leaderboards",
                          style: textTheme.titleSmall,
                        ),
                        Container(
                          width: 19,
                          height: 19,
                          decoration: BoxDecoration(
                            color: ColorConstants.darkPurple.withOpacity(
                              0.1,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ColorConstants.mainPurple,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CardLeaderboard(
                          name: leaderboardModel[index].name,
                          image: leaderboardModel[index].image,
                          date: leaderboardModel[index].date,
                          totalDeals: leaderboardModel[index].totalDeals,
                          leaderBoardNumber: index + 1,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: leaderboardModel.length,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
