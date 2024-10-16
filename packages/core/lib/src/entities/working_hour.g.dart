// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_hour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$workingHourImpl _$$workingHourImplFromJson(Map<String, dynamic> json) =>
    _$workingHourImpl(
      id: json['id'] as String,
      startTime:
          const TimeOfDayConverter().fromJson(json['startTime'] as String),
      endTime: const TimeOfDayConverter().fromJson(json['endTime'] as String),
      dayOfWeek: json['dayOfWeek'] as String,
    );

Map<String, dynamic> _$$workingHourImplToJson(_$workingHourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': const TimeOfDayConverter().toJson(instance.startTime),
      'endTime': const TimeOfDayConverter().toJson(instance.endTime),
      'dayOfWeek': instance.dayOfWeek,
    };
