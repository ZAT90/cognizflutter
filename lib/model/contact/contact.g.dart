// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactModel _$$_ContactModelFromJson(Map<String, dynamic> json) =>
    _$_ContactModel(
      success: json['success'] as bool?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContactModelToJson(_$_ContactModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
