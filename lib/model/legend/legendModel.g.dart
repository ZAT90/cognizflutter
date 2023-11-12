// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legendModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LegendModel _$$_LegendModelFromJson(Map<String, dynamic> json) =>
    _$_LegendModel(
      title: json['title'] as String?,
      inner_title: json['inner_title'] as String?,
      legends: (json['legends'] as List<dynamic>?)
          ?.map((e) => Legends.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LegendModelToJson(_$_LegendModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'inner_title': instance.inner_title,
      'legends': instance.legends,
    };

_$_Legends _$$_LegendsFromJson(Map<String, dynamic> json) => _$_Legends(
      name: json['name'] as String?,
      color: json['color'] as String?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_LegendsToJson(_$_Legends instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'count': instance.count,
    };
