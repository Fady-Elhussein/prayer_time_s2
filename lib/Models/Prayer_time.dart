class PrayerTimeModel {
  int code;
  Map<String, dynamic> timings;
  PrayerTimeModel({required this.code, required this.timings});
  factory PrayerTimeModel.fromJson(Map<String, dynamic> result) {
    return PrayerTimeModel(code: result["code"], timings: result["data"]["timings"]);
  }
}
