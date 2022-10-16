import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_store/screen/android_screens/android_home_screen.dart';
import 'package:platform_converter_store/screen/cupertino_screens/cupertino_home_screen.dart';
import 'package:platform_converter_store/uttlis/global.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Global.isIos
        ? const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoHomeScreen(),
    )
        : const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AndroidHomeScreen(),
    );
  }
}