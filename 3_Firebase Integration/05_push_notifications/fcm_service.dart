import 'package:firebase_messaging/firebase_messaging.dart';

class FCMService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  /// Initializes FCM and sets up listeners 
  Future<void> initialize() async {
    // 1. Request Permission (Required for iOS)
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else {
      print('User declined or has not accepted permission');
    }

    // 2. Get the Device Token (used to send notifications to this specific device)
    String? token = await _fcm.getToken();
    print("FCM Token: $token");

    // 3. Handle Foreground Messages
    // This triggers when the app is open and in use
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Received a foreground message: ${message.notification?.title}');
      print('Message Body: ${message.notification?.body}');
    });

    // 4. Handle Background/Terminated state clicks
    // This triggers when a user taps on a notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Notification caused app to open from background!');
    });
  }
}