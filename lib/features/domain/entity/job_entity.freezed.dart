// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobEntity _$JobEntityFromJson(Map<String, dynamic> json) {
  return _JobEntity.fromJson(json);
}

/// @nodoc
mixin _$JobEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get pickupAddress => throw _privateConstructorUsedError;
  String get dropOffAddress => throw _privateConstructorUsedError;
  DateTime get datePosted => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobEntityCopyWith<JobEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobEntityCopyWith<$Res> {
  factory $JobEntityCopyWith(JobEntity value, $Res Function(JobEntity) then) =
      _$JobEntityCopyWithImpl<$Res, JobEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String pickupAddress,
      String dropOffAddress,
      DateTime datePosted,
      DateTime deliveryDate});
}

/// @nodoc
class _$JobEntityCopyWithImpl<$Res, $Val extends JobEntity>
    implements $JobEntityCopyWith<$Res> {
  _$JobEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? pickupAddress = null,
    Object? dropOffAddress = null,
    Object? datePosted = null,
    Object? deliveryDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      dropOffAddress: null == dropOffAddress
          ? _value.dropOffAddress
          : dropOffAddress // ignore: cast_nullable_to_non_nullable
              as String,
      datePosted: null == datePosted
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobEntityCopyWith<$Res> implements $JobEntityCopyWith<$Res> {
  factory _$$_JobEntityCopyWith(
          _$_JobEntity value, $Res Function(_$_JobEntity) then) =
      __$$_JobEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String pickupAddress,
      String dropOffAddress,
      DateTime datePosted,
      DateTime deliveryDate});
}

/// @nodoc
class __$$_JobEntityCopyWithImpl<$Res>
    extends _$JobEntityCopyWithImpl<$Res, _$_JobEntity>
    implements _$$_JobEntityCopyWith<$Res> {
  __$$_JobEntityCopyWithImpl(
      _$_JobEntity _value, $Res Function(_$_JobEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? pickupAddress = null,
    Object? dropOffAddress = null,
    Object? datePosted = null,
    Object? deliveryDate = null,
  }) {
    return _then(_$_JobEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      dropOffAddress: null == dropOffAddress
          ? _value.dropOffAddress
          : dropOffAddress // ignore: cast_nullable_to_non_nullable
              as String,
      datePosted: null == datePosted
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobEntity implements _JobEntity {
  const _$_JobEntity(
      {required this.id,
      required this.title,
      required this.pickupAddress,
      required this.dropOffAddress,
      required this.datePosted,
      required this.deliveryDate});

  factory _$_JobEntity.fromJson(Map<String, dynamic> json) =>
      _$$_JobEntityFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String pickupAddress;
  @override
  final String dropOffAddress;
  @override
  final DateTime datePosted;
  @override
  final DateTime deliveryDate;

  @override
  String toString() {
    return 'JobEntity(id: $id, title: $title, pickupAddress: $pickupAddress, dropOffAddress: $dropOffAddress, datePosted: $datePosted, deliveryDate: $deliveryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropOffAddress, dropOffAddress) ||
                other.dropOffAddress == dropOffAddress) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, pickupAddress,
      dropOffAddress, datePosted, deliveryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobEntityCopyWith<_$_JobEntity> get copyWith =>
      __$$_JobEntityCopyWithImpl<_$_JobEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobEntityToJson(
      this,
    );
  }
}

abstract class _JobEntity implements JobEntity {
  const factory _JobEntity(
      {required final String id,
      required final String title,
      required final String pickupAddress,
      required final String dropOffAddress,
      required final DateTime datePosted,
      required final DateTime deliveryDate}) = _$_JobEntity;

  factory _JobEntity.fromJson(Map<String, dynamic> json) =
      _$_JobEntity.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get pickupAddress;
  @override
  String get dropOffAddress;
  @override
  DateTime get datePosted;
  @override
  DateTime get deliveryDate;
  @override
  @JsonKey(ignore: true)
  _$$_JobEntityCopyWith<_$_JobEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
