import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapptharwat/services/news_service.dart';

import 'features/home/views/Homescreen.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}
final dio = Dio();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
