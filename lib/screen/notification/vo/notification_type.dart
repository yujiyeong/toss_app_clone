enum NotificationType {
  tossPay('토스페이', 'assets/image/notification/notification_toss.png'),
  luck('행운복권', 'assets/image/notification/notification_luck.png'),
  people('토스 공동구매', 'assets/image/notification/notification_people.png'),
  stock('토스증권 컨텐츠', 'assets/image/notification/notification_stock.png'),
  walk('만보기', 'assets/image/notification/notification_walk.png'),
  moneyTip('오늘의 머니 팁', 'assets/image/notification/notification_idea.png');

  const NotificationType(this.name, this.iconPath);

  final String name;
  final String iconPath;
}