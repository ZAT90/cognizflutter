import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'legend_model.freezed.dart';
part 'legend_model.g.dart';

@freezed
class LegendModel with _$LegendModel {
	const factory LegendModel({
String? title,
String? inner_title,
List<Legends>? legends,
	}) = _LegendModel;

	factory LegendModel.fromJson(Map<String, dynamic> json) => _$LegendModelFromJson(json);
}

@freezed
class Legends with _$Legends {
	const factory Legends({
String? name,
String? color,
int? count,
	}) = _Legends;

	factory Legends.fromJson(Map<String, dynamic> json) => _$LegendsFromJson(json);
}