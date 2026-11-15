import 'package:dio/dio.dart';
import 'package:prayer_time_s2/Models/Prayer_time.dart';

class PrayerTimeService {
  static Dio dio = Dio();

  static Future<PrayerTimeModel> getPrayerTime() async {
    Response response = await dio.get(
      "https://api.aladhan.com/v1/timingsByCity/15-11-2026?city=Giza&country=Egypt&method=2",
    );

    return PrayerTimeModel.fromJson(response.data);
  }
}
