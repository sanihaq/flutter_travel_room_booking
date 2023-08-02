import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/pages/details_screen.dart';
import 'package:flutter_travel_ui/pages/home_screen.dart';
import 'package:flutter_travel_ui/pages/splash_screen.dart';
import 'package:window_manager/window_manager.dart' show WindowOptions, windowManager;
import 'utils/platforms_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (PlatformDetails.instance.isDesktop && !PlatformDetails.instance.isWeb) {
    await windowManager.ensureInitialized();
    const windowOptions = WindowOptions(
      size: Size(375, 812),
      alwaysOnTop: true,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
      windowManager.setResizable(false);
    });
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
