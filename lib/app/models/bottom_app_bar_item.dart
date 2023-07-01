class BottomAppBarItem {
  String title;
  String icon;
  BottomAppBarItem({required this.title, required this.icon});
}

List<BottomAppBarItem> bottomAppBarItem = [
  BottomAppBarItem(title: 'Home', icon: 'assets/icons/home.svg'),
  BottomAppBarItem(title: 'Lead', icon: 'assets/icons/task.svg'),
  BottomAppBarItem(title: 'Commision', icon: 'assets/icons/clock.svg'),
  BottomAppBarItem(title: 'Profile', icon: 'assets/icons/profile.svg'),
];
