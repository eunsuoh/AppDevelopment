import 'package:flutter/material.dart';
import 'screens/tpo_input.dart';
import 'screens/outfit_recommendation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TPO 코디 추천',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TpoInputScreen(),
        '/recommendation': (context) => OutfitRecommendationScreen(),
      },
    );
  }
}
