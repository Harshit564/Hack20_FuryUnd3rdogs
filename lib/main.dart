import 'package:Hack20_FuryUnd3rdogs/pages/home_page.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AnimatedSplashScreen(),
      routes: {
        AnimatedSplashScreen.routeName: (context) => AnimatedSplashScreen(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}