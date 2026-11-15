import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prayer_time_s2/provider/prayer_time_provider.dart';
import 'package:prayer_time_s2/widgets/custom_listTile.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<PrayerTimeProvider>(
        builder: (context, value, child) {
          if (value.prayerTimeModel == null) {
            value.getPrayerTimeProvider();
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemCount: value.prayerTimeModel!.timings.length,
              itemBuilder: (context, index) => CustomListTile(
                title: value.prayerTimeModel!.timings.keys.elementAt(index),
                subtitle: value.prayerTimeModel!.timings.values.elementAt(
                  index,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
