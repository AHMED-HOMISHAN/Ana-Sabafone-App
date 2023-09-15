import 'package:anasabafone/Screens/SplashScreen.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: const Locale('ar'),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: primaryColor,
            centerTitle: true,
            titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
        primaryColor: primaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}
