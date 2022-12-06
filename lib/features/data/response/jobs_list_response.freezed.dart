// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobsListResponse _$JobsListResponseFromJson(Map<String, dynamic> json) {
  return _JobsListResponse.fromJson(json);
}

/// @nodoc
mixin _$JobsListResponse {
  List<JobResponse> get jobsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobsListResponseCopyWith<JobsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsListResponseCopyWith<$Res> {
  factory $JobsListResponseCopyWith(
          JobsListResponse value, $Res Function(JobsListResponse) then) =
      _$JobsListResponseCopyWithImpl<$Res, JobsListResponse>;
  @useResult
  $Res call({List<JobResponse> jobsList});
}

/// @nodoc
class _$JobsListResponseCopyWithImpl<$Res, $Val extends JobsListResponse>
    implements $JobsListResponseCopyWith<$Res> {
  _$JobsListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobsList = null,
  }) {
    return _then(_value.copyWith(
      jobsList: null == jobsList
          ? _value.jobsList
          : jobsList // ignore: cast_nullable_to_non_nullable
              as List<JobResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobsListResponseCopyWith<$Res>
    implements $JobsListResponseCopyWith<$Res> {
  factory _$$_JobsListResponseCopyWith(
          _$_JobsListResponse value, $Res Function(_$_JobsListResponse) then) =
      __$$_JobsListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<JobResponse> jobsList});
}

/// @nodoc
class __$$_JobsListResponseCopyWithImpl<$Res>
    extends _$JobsListResponseCopyWithImpl<$Res, _$_JobsListResponse>
    implements _$$_JobsListResponseCopyWith<$Res> {
  __$$_JobsListResponseCopyWithImpl(
      _$_JobsListResponse _value, $Res Function(_$_JobsListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobsList = null,
  }) {
    return _then(_$_JobsListResponse(
      jobsList: null == jobsList
          ? _value._jobsList
          : jobsList // ignore: cast_nullable_to_non_nullable
              as List<JobResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_JobsListResponse implements _JobsListResponse {
  const _$_JobsListResponse({required final List<JobResponse> jobsList})
      : _jobsList = jobsList;

  factory _$_JobsListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JobsListResponseFromJson(json);

  final List<JobResponse> _jobsList;
  @override
  List<JobResponse> get jobsList {
    if (_jobsList is EqualUnmodifiableListView) return _jobsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobsList);
  }

  @override
  String toString() {
    return 'JobsListResponse(jobsList: $jobsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobsListResponse &&
            const DeepCollectionEquality().equals(other._jobsList, _jobsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jobsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobsListResponseCopyWith<_$_JobsListResponse> get copyWith =>
      __$$_JobsListResponseCopyWithImpl<_$_JobsListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobsListResponseToJson(
      this,
    );
  }
}

abstract class _JobsListResponse implements JobsListResponse {
  const factory _JobsListResponse({required final List<JobResponse> jobsList}) =
      _$_JobsListResponse;

  factory _JobsListResponse.fromJson(Map<String, dynamic> json) =
      _$_JobsListResponse.fromJson;

  @override
  List<JobResponse> get jobsList;
  @override
  @JsonKey(ignore: true)
  _$$_JobsListResponseCopyWith<_$_JobsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
