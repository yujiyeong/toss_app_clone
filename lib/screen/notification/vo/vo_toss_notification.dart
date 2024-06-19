import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

class TossNotification {
  final NotificationType type;
  final String description;
  final DateTime time;
  bool isRead;

  TossNotification({
    required this.type,
    required this.description,
    required this.time,
    this.isRead = false,
  });
}
