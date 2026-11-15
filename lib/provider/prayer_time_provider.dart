import 'package:flutter/material.dart';
import 'package:prayer_time_s2/Models/Prayer_time.dart';
import 'package:prayer_time_s2/Services/prayer_time_service.dart';

class PrayerTimeProvider extends ChangeNotifier {
  PrayerTimeModel? prayerTimeModel;
  getPrayerTimeProvider() async {
    prayerTimeModel = await PrayerTimeService.getPrayerTime();
    notifyListeners();
  }
}
