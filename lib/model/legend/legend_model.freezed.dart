// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LegendModel _$LegendModelFromJson(Map<String, dynamic> json) {
  return _LegendModel.fromJson(json);
}

/// @nodoc
mixin _$LegendModel {
  String? get title => throw _privateConstructorUsedError;
  String? get inner_title => throw _privateConstructorUsedError;
  List<Legends>? get legends => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegendModelCopyWith<LegendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegendModelCopyWith<$Res> {
  factory $LegendModelCopyWith(
          LegendModel value, $Res Function(LegendModel) then) =
      _$LegendModelCopyWithImpl<$Res, LegendModel>;
  @useResult
  $Res call({String? title, String? inner_title, List<Legends>? legends});
}

/// @nodoc
class _$LegendModelCopyWithImpl<$Res, $Val extends LegendModel>
    implements $LegendModelCopyWith<$Res> {
  _$LegendModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? inner_title = freezed,
    Object? legends = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      inner_title: freezed == inner_title
          ? _value.inner_title
          : inner_title // ignore: cast_nullable_to_non_nullable
              as String?,
      legends: freezed == legends
          ? _value.legends
          : legends // ignore: cast_nullable_to_non_nullable
              as List<Legends>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LegendModelCopyWith<$Res>
    implements $LegendModelCopyWith<$Res> {
  factory _$$_LegendModelCopyWith(
          _$_LegendModel value, $Res Function(_$_LegendModel) then) =
      __$$_LegendModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? inner_title, List<Legends>? legends});
}

/// @nodoc
class __$$_LegendModelCopyWithImpl<$Res>
    extends _$LegendModelCopyWithImpl<$Res, _$_LegendModel>
    implements _$$_LegendModelCopyWith<$Res> {
  __$$_LegendModelCopyWithImpl(
      _$_LegendModel _value, $Res Function(_$_LegendModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? inner_title = freezed,
    Object? legends = freezed,
  }) {
    return _then(_$_LegendModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      inner_title: freezed == inner_title
          ? _value.inner_title
          : inner_title // ignore: cast_nullable_to_non_nullable
              as String?,
      legends: freezed == legends
          ? _value._legends
          : legends // ignore: cast_nullable_to_non_nullable
              as List<Legends>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LegendModel implements _LegendModel {
  const _$_LegendModel(
      {this.title, this.inner_title, final List<Legends>? legends})
      : _legends = legends;

  factory _$_LegendModel.fromJson(Map<String, dynamic> json) =>
      _$$_LegendModelFromJson(json);

  @override
  final String? title;
  @override
  final String? inner_title;
  final List<Legends>? _legends;
  @override
  List<Legends>? get legends {
    final value = _legends;
    if (value == null) return null;
    if (_legends is EqualUnmodifiableListView) return _legends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LegendModel(title: $title, inner_title: $inner_title, legends: $legends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LegendModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.inner_title, inner_title) ||
                other.inner_title == inner_title) &&
            const DeepCollectionEquality().equals(other._legends, _legends));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, inner_title,
      const DeepCollectionEquality().hash(_legends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LegendModelCopyWith<_$_LegendModel> get copyWith =>
      __$$_LegendModelCopyWithImpl<_$_LegendModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LegendModelToJson(
      this,
    );
  }
}

abstract class _LegendModel implements LegendModel {
  const factory _LegendModel(
      {final String? title,
      final String? inner_title,
      final List<Legends>? legends}) = _$_LegendModel;

  factory _LegendModel.fromJson(Map<String, dynamic> json) =
      _$_LegendModel.fromJson;

  @override
  String? get title;
  @override
  String? get inner_title;
  @override
  List<Legends>? get legends;
  @override
  @JsonKey(ignore: true)
  _$$_LegendModelCopyWith<_$_LegendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Legends _$LegendsFromJson(Map<String, dynamic> json) {
  return _Legends.fromJson(json);
}

/// @nodoc
mixin _$Legends {
  String? get name => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegendsCopyWith<Legends> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegendsCopyWith<$Res> {
  factory $LegendsCopyWith(Legends value, $Res Function(Legends) then) =
      _$LegendsCopyWithImpl<$Res, Legends>;
  @useResult
  $Res call({String? name, String? color, int? count});
}

/// @nodoc
class _$LegendsCopyWithImpl<$Res, $Val extends Legends>
    implements $LegendsCopyWith<$Res> {
  _$LegendsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LegendsCopyWith<$Res> implements $LegendsCopyWith<$Res> {
  factory _$$_LegendsCopyWith(
          _$_Legends value, $Res Function(_$_Legends) then) =
      __$$_LegendsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? color, int? count});
}

/// @nodoc
class __$$_LegendsCopyWithImpl<$Res>
    extends _$LegendsCopyWithImpl<$Res, _$_Legends>
    implements _$$_LegendsCopyWith<$Res> {
  __$$_LegendsCopyWithImpl(_$_Legends _value, $Res Function(_$_Legends) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_Legends(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Legends implements _Legends {
  const _$_Legends({this.name, this.color, this.count});

  factory _$_Legends.fromJson(Map<String, dynamic> json) =>
      _$$_LegendsFromJson(json);

  @override
  final String? name;
  @override
  final String? color;
  @override
  final int? count;

  @override
  String toString() {
    return 'Legends(name: $name, color: $color, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Legends &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, color, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LegendsCopyWith<_$_Legends> get copyWith =>
      __$$_LegendsCopyWithImpl<_$_Legends>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LegendsToJson(
      this,
    );
  }
}

abstract class _Legends implements Legends {
  const factory _Legends(
      {final String? name, final String? color, final int? count}) = _$_Legends;

  factory _Legends.fromJson(Map<String, dynamic> json) = _$_Legends.fromJson;

  @override
  String? get name;
  @override
  String? get color;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_LegendsCopyWith<_$_Legends> get copyWith =>
      throw _privateConstructorUsedError;
}
