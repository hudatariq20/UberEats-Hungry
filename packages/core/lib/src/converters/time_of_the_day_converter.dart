//converters basically for JSON Conversion
//Freezed cannot convert automatically time of the day into json string..

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();
//from json
  @override
  TimeOfDay fromJson(String json) {
    final parts = json.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

//to json
  @override
  String toJson(TimeOfDay time) => '${time.hour}:${time.minute}';
}
