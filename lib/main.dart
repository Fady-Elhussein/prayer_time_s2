import 'package:flutter/material.dart';
import 'package:prayer_time_s2/Views/home_screen.dart';
import 'package:prayer_time_s2/provider/prayer_time_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrayerTimeProvider(),
      child: MaterialApp(home: HomeScreen()),
    );
  }
}
