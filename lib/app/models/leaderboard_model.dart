class LeaderboardModel {
  String name;
  int totalDeals;
  String date;
  String image;
  String statusLead;
  String totalMoney;
  LeaderboardModel({
    required this.name,
    required this.totalDeals,
    required this.date,
    required this.image,
    required this.statusLead,
    required this.totalMoney,
  });
}

List<LeaderboardModel> leaderboardModel = [
  LeaderboardModel(
    name: "Shinta Alexandra ",
    totalDeals: 45,
    date: '31 January 2023',
    image: 'assets/images/avatar1.svg',
    statusLead: 'New',
    totalMoney: 'Rp. 13.000.000',
  ),
  LeaderboardModel(
    name: "Jhonatan Zegwin ",
    totalDeals: 41,
    date: '23 January 2023',
    image: 'assets/images/avatar2.svg',
    statusLead: 'Hot',
    totalMoney: 'Rp. 13.000.000',
  ),
  LeaderboardModel(
    name: "Vita Arsalansia ",
    totalDeals: 34,
    date: '15 January 2023',
    image: 'assets/images/avatar3.svg',
    statusLead: 'Cold',
    totalMoney: 'Rp. 13.000.000',
  ),
  LeaderboardModel(
    name: "Meriko Yolanda ",
    totalDeals: 30,
    date: '17 January 2023',
    image: 'assets/images/avatar4.svg',
    statusLead: 'Cold',
    totalMoney: 'Rp. 13.000.000',
  ),
  LeaderboardModel(
    name: "Higuain Morelan ",
    totalDeals: 25,
    date: '22 January 2023',
    image: 'assets/images/avatar5.svg',
    statusLead: 'Cold',
    totalMoney: 'Rp. 13.000.000',
  ),
];
