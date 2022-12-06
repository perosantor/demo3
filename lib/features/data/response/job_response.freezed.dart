// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobResponse _$JobResponseFromJson(Map<String, dynamic> json) {
  return _JobResponse.fromJson(json);
}

/// @nodoc
mixin _$JobResponse {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  AddressResponse get pickup => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_off')
  AddressResponse get dropOff => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_posted')
  String get datePosted => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_delivery_date')
  String get expectedDeliveryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobResponseCopyWith<JobResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobResponseCopyWith<$Res> {
  factory $JobResponseCopyWith(
          JobResponse value, $Res Function(JobResponse) then) =
      _$JobResponseCopyWithImpl<$Res, JobResponse>;
  @useResult
  $Res call(
      {int id,
      String title,
      AddressResponse pickup,
      @JsonKey(name: 'drop_off') AddressResponse dropOff,
      @JsonKey(name: 'date_posted') String datePosted,
      @JsonKey(name: 'expected_delivery_date') String expectedDeliveryDate});

  $AddressResponseCopyWith<$Res> get pickup;
  $AddressResponseCopyWith<$Res> get dropOff;
}

/// @nodoc
class _$JobResponseCopyWithImpl<$Res, $Val extends JobResponse>
    implements $JobResponseCopyWith<$Res> {
  _$JobResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? pickup = null,
    Object? dropOff = null,
    Object? datePosted = null,
    Object? expectedDeliveryDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pickup: null == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as AddressResponse,
      dropOff: null == dropOff
          ? _value.dropOff
          : dropOff // ignore: cast_nullable_to_non_nullable
              as AddressResponse,
      datePosted: null == datePosted
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String,
      expectedDeliveryDate: null == expectedDeliveryDate
          ? _value.expectedDeliveryDate
          : expectedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressResponseCopyWith<$Res> get pickup {
    return $AddressResponseCopyWith<$Res>(_value.pickup, (value) {
      return _then(_value.copyWith(pickup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressResponseCopyWith<$Res> get dropOff {
    return $AddressResponseCopyWith<$Res>(_value.dropOff, (value) {
      return _then(_value.copyWith(dropOff: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobResponseCopyWith<$Res>
    implements $JobResponseCopyWith<$Res> {
  factory _$$_JobResponseCopyWith(
          _$_JobResponse value, $Res Function(_$_JobResponse) then) =
      __$$_JobResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      AddressResponse pickup,
      @JsonKey(name: 'drop_off') AddressResponse dropOff,
      @JsonKey(name: 'date_posted') String datePosted,
      @JsonKey(name: 'expected_delivery_date') String expectedDeliveryDate});

  @override
  $AddressResponseCopyWith<$Res> get pickup;
  @override
  $AddressResponseCopyWith<$Res> get dropOff;
}

/// @nodoc
class __$$_JobResponseCopyWithImpl<$Res>
    extends _$JobResponseCopyWithImpl<$Res, _$_JobResponse>
    implements _$$_JobResponseCopyWith<$Res> {
  __$$_JobResponseCopyWithImpl(
      _$_JobResponse _value, $Res Function(_$_JobResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? pickup = null,
    Object? dropOff = null,
    Object? datePosted = null,
    Object? expectedDeliveryDate = null,
  }) {
    return _then(_$_JobResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pickup: null == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as AddressResponse,
      dropOff: null == dropOff
          ? _value.dropOff
          : dropOff // ignore: cast_nullable_to_non_nullable
              as AddressResponse,
      datePosted: null == datePosted
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String,
      expectedDeliveryDate: null == expectedDeliveryDate
          ? _value.expectedDeliveryDate
          : expectedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_JobResponse implements _JobResponse {
  const _$_JobResponse(
      {required this.id,
      required this.title,
      required this.pickup,
      @JsonKey(name: 'drop_off')
          required this.dropOff,
      @JsonKey(name: 'date_posted')
          required this.datePosted,
      @JsonKey(name: 'expected_delivery_date')
          required this.expectedDeliveryDate});

  factory _$_JobResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JobResponseFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final AddressResponse pickup;
  @override
  @JsonKey(name: 'drop_off')
  final AddressResponse dropOff;
  @override
  @JsonKey(name: 'date_posted')
  final String datePosted;
  @override
  @JsonKey(name: 'expected_delivery_date')
  final String expectedDeliveryDate;

  @override
  String toString() {
    return 'JobResponse(id: $id, title: $title, pickup: $pickup, dropOff: $dropOff, datePosted: $datePosted, expectedDeliveryDate: $expectedDeliveryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.dropOff, dropOff) || other.dropOff == dropOff) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            (identical(other.expectedDeliveryDate, expectedDeliveryDate) ||
                other.expectedDeliveryDate == expectedDeliveryDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, pickup, dropOff,
      datePosted, expectedDeliveryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobResponseCopyWith<_$_JobResponse> get copyWith =>
      __$$_JobResponseCopyWithImpl<_$_JobResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobResponseToJson(
      this,
    );
  }
}

abstract class _JobResponse implements JobResponse {
  const factory _JobResponse(
      {required final int id,
      required final String title,
      required final AddressResponse pickup,
      @JsonKey(name: 'drop_off')
          required final AddressResponse dropOff,
      @JsonKey(name: 'date_posted')
          required final String datePosted,
      @JsonKey(name: 'expected_delivery_date')
          required final String expectedDeliveryDate}) = _$_JobResponse;

  factory _JobResponse.fromJson(Map<String, dynamic> json) =
      _$_JobResponse.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  AddressResponse get pickup;
  @override
  @JsonKey(name: 'drop_off')
  AddressResponse get dropOff;
  @override
  @JsonKey(name: 'date_posted')
  String get datePosted;
  @override
  @JsonKey(name: 'expected_delivery_date')
  String get expectedDeliveryDate;
  @override
  @JsonKey(ignore: true)
  _$$_JobResponseCopyWith<_$_JobResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) {
  return _AddressResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressResponse {
  @JsonKey(name: 'address_line_1')
  String get firstAddressLine => throw _privateConstructorUsedError;
  @JsonKey(name: 'postcode')
  String get postcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res, AddressResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_line_1') String firstAddressLine,
      @JsonKey(name: 'postcode') String postcode});
}

/// @nodoc
class _$AddressResponseCopyWithImpl<$Res, $Val extends AddressResponse>
    implements $AddressResponseCopyWith<$Res> {
  _$AddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstAddressLine = null,
    Object? postcode = null,
  }) {
    return _then(_value.copyWith(
      firstAddressLine: null == firstAddressLine
          ? _value.firstAddressLine
          : firstAddressLine // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressResponseCopyWith<$Res>
    implements $AddressResponseCopyWith<$Res> {
  factory _$$_AddressResponseCopyWith(
          _$_AddressResponse value, $Res Function(_$_AddressResponse) then) =
      __$$_AddressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_line_1') String firstAddressLine,
      @JsonKey(name: 'postcode') String postcode});
}

/// @nodoc
class __$$_AddressResponseCopyWithImpl<$Res>
    extends _$AddressResponseCopyWithImpl<$Res, _$_AddressResponse>
    implements _$$_AddressResponseCopyWith<$Res> {
  __$$_AddressResponseCopyWithImpl(
      _$_AddressResponse _value, $Res Function(_$_AddressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstAddressLine = null,
    Object? postcode = null,
  }) {
    return _then(_$_AddressResponse(
      firstAddressLine: null == firstAddressLine
          ? _value.firstAddressLine
          : firstAddressLine // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AddressResponse implements _AddressResponse {
  const _$_AddressResponse(
      {@JsonKey(name: 'address_line_1') required this.firstAddressLine,
      @JsonKey(name: 'postcode') required this.postcode});

  factory _$_AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddressResponseFromJson(json);

  @override
  @JsonKey(name: 'address_line_1')
  final String firstAddressLine;
  @override
  @JsonKey(name: 'postcode')
  final String postcode;

  @override
  String toString() {
    return 'AddressResponse(firstAddressLine: $firstAddressLine, postcode: $postcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressResponse &&
            (identical(other.firstAddressLine, firstAddressLine) ||
                other.firstAddressLine == firstAddressLine) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstAddressLine, postcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      __$$_AddressResponseCopyWithImpl<_$_AddressResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressResponseToJson(
      this,
    );
  }
}

abstract class _AddressResponse implements AddressResponse {
  const factory _AddressResponse(
      {@JsonKey(name: 'address_line_1')
          required final String firstAddressLine,
      @JsonKey(name: 'postcode')
          required final String postcode}) = _$_AddressResponse;

  factory _AddressResponse.fromJson(Map<String, dynamic> json) =
      _$_AddressResponse.fromJson;

  @override
  @JsonKey(name: 'address_line_1')
  String get firstAddressLine;
  @override
  @JsonKey(name: 'postcode')
  String get postcode;
  @override
  @JsonKey(ignore: true)
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
