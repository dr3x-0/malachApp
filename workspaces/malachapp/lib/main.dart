import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:malachapp/auth/admin/firebase_api.dart';
import 'package:malachapp/auth/auth_page.dart';
import 'package:malachapp/firebase_options.dart';
import 'package:malachapp/pages/event_page.dart';
import 'package:malachapp/pages/poll_page.dart';
// import 'package:malachapp/services/notification_service.dart';
import 'package:malachapp/themes/dark_mode.dart';
import 'package:malachapp/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:malachapp/themes/theme_provider.dart';
import 'package:provider/provider.dart';

final navKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAppCheck.instance.activate();
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
  await FirebaseApi().initNotifications();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final NotificationService _notificationService = NotificationService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      darkTheme: darkMode,
      home: const FirebaseAuthPage(),
      navigatorKey: navKey,
      routes: ({
        '/event': (context) => const EventListPage(),
        '/polls': (context) => const PollList(),
      }),
    );
  }
}
