import 'package:core/src/converters/time_of_the_day_converter.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'working_hour.freezed.dart';
part 'working_hour.g.dart';

@freezed
class workingHour with _$workingHour {
  const factory workingHour({
    required String id,
    @TimeOfDayConverter() required TimeOfDay startTime,
    @TimeOfDayConverter() required TimeOfDay endTime,
    required String dayOfWeek,
  }) = _workingHour;

  factory workingHour.fromJson(Map<String, Object?> json) =>
      _$workingHourFromJson(json);
}
