import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class ContactModel with _$ContactModel {
	const factory ContactModel({
bool? success,
Status? status,
List<Data>? data,
	}) = _ContactModel;

	factory ContactModel.fromJson(Map<String, dynamic> json) => _$ContactModelFromJson(json);
}

@freezed
class Status with _$Status {
	const factory Status({
String? code,
String? message,
	}) = _Status;

	factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class Data with _$Data {
	const factory Data({
String? id,
String? name,
String? email,
	}) = _Data;

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}