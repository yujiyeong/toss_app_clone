import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_toss_notification.dart';

final notificationDummies = <TossNotification>[
  TossNotification(
    type: NotificationType.tossPay,
    description: '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요.',
    time: DateTime.now().subtract(27.minutes),
  ),
  TossNotification(
    type: NotificationType.stock,
    description: '인적분할에 대해 알려드릴게요.',
    time: DateTime.now().subtract(1.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.walk,
    description: '1,000걸음 이상 걸었다면 포인트 받으세요.',
    time: DateTime.now().subtract(1.hours),
  ),
  TossNotification(
    type: NotificationType.moneyTip,
    description: '유럽 식품 물가가 치솟고 있어요.\n유저님, 유럽여행에 관심이 있다면 확인해보세요.',
    time: DateTime.now().subtract(8.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.walk,
    description: '오늘 1,000걸음을 넘겼어요. 포인트를 받아보세요',
    time: DateTime.now().subtract(11.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.luck,
    description: 'M월 D일, 행운복권이 도착했어요',
    time: DateTime.now().subtract(12.hours),
  ),
  TossNotification(
    type: NotificationType.people,
    description: '띵동! 월요일 공동구매 보러가기',
    time: DateTime.now().subtract(12.hours),
  ),
  TossNotification(
    type: NotificationType.tossPay,
    description: '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요.',
    time: DateTime.now().subtract(27.minutes),
  ),
  TossNotification(
    type: NotificationType.stock,
    description: '인적분할에 대해 알려드릴게요.',
    time: DateTime.now().subtract(1.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.walk,
    description: '1,000걸음 이상 걸었다면 포인트 받으세요.',
    time: DateTime.now().subtract(1.hours),
  ),
  TossNotification(
    type: NotificationType.moneyTip,
    description: '유럽 식품 물가가 치솟고 있어요.\n유저님, 유럽여행에 관심이 있다면 확인해보세요.',
    time: DateTime.now().subtract(8.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.walk,
    description: '오늘 1,000걸음을 넘겼어요. 포인트를 받아보세요',
    time: DateTime.now().subtract(11.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.luck,
    description: 'M월 D일, 행운복권이 도착했어요',
    time: DateTime.now().subtract(12.hours),
  ),
  TossNotification(
    type: NotificationType.people,
    description: '띵동! 월요일 공동구매 보러가기',
    time: DateTime.now().subtract(12.hours),
  ),
];
