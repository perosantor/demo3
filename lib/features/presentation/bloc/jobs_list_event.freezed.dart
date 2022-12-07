// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jobsListFetched,
    required TResult Function(JobEntity updatedJob) jobsListUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? jobsListFetched,
    TResult? Function(JobEntity updatedJob)? jobsListUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jobsListFetched,
    TResult Function(JobEntity updatedJob)? jobsListUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobsListFetched value) jobsListFetched,
    required TResult Function(JobsListUpdated value) jobsListUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobsListFetched value)? jobsListFetched,
    TResult? Function(JobsListUpdated value)? jobsListUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobsListFetched value)? jobsListFetched,
    TResult Function(JobsListUpdated value)? jobsListUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsListEventCopyWith<$Res> {
  factory $JobsListEventCopyWith(
          JobsListEvent value, $Res Function(JobsListEvent) then) =
      _$JobsListEventCopyWithImpl<$Res, JobsListEvent>;
}

/// @nodoc
class _$JobsListEventCopyWithImpl<$Res, $Val extends JobsListEvent>
    implements $JobsListEventCopyWith<$Res> {
  _$JobsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$JobsListFetchedCopyWith<$Res> {
  factory _$$JobsListFetchedCopyWith(
          _$JobsListFetched value, $Res Function(_$JobsListFetched) then) =
      __$$JobsListFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JobsListFetchedCopyWithImpl<$Res>
    extends _$JobsListEventCopyWithImpl<$Res, _$JobsListFetched>
    implements _$$JobsListFetchedCopyWith<$Res> {
  __$$JobsListFetchedCopyWithImpl(
      _$JobsListFetched _value, $Res Function(_$JobsListFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JobsListFetched implements JobsListFetched {
  const _$JobsListFetched();

  @override
  String toString() {
    return 'JobsListEvent.jobsListFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JobsListFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jobsListFetched,
    required TResult Function(JobEntity updatedJob) jobsListUpdated,
  }) {
    return jobsListFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? jobsListFetched,
    TResult? Function(JobEntity updatedJob)? jobsListUpdated,
  }) {
    return jobsListFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jobsListFetched,
    TResult Function(JobEntity updatedJob)? jobsListUpdated,
    required TResult orElse(),
  }) {
    if (jobsListFetched != null) {
      return jobsListFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobsListFetched value) jobsListFetched,
    required TResult Function(JobsListUpdated value) jobsListUpdated,
  }) {
    return jobsListFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobsListFetched value)? jobsListFetched,
    TResult? Function(JobsListUpdated value)? jobsListUpdated,
  }) {
    return jobsListFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobsListFetched value)? jobsListFetched,
    TResult Function(JobsListUpdated value)? jobsListUpdated,
    required TResult orElse(),
  }) {
    if (jobsListFetched != null) {
      return jobsListFetched(this);
    }
    return orElse();
  }
}

abstract class JobsListFetched implements JobsListEvent {
  const factory JobsListFetched() = _$JobsListFetched;
}

/// @nodoc
abstract class _$$JobsListUpdatedCopyWith<$Res> {
  factory _$$JobsListUpdatedCopyWith(
          _$JobsListUpdated value, $Res Function(_$JobsListUpdated) then) =
      __$$JobsListUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({JobEntity updatedJob});

  $JobEntityCopyWith<$Res> get updatedJob;
}

/// @nodoc
class __$$JobsListUpdatedCopyWithImpl<$Res>
    extends _$JobsListEventCopyWithImpl<$Res, _$JobsListUpdated>
    implements _$$JobsListUpdatedCopyWith<$Res> {
  __$$JobsListUpdatedCopyWithImpl(
      _$JobsListUpdated _value, $Res Function(_$JobsListUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedJob = null,
  }) {
    return _then(_$JobsListUpdated(
      updatedJob: null == updatedJob
          ? _value.updatedJob
          : updatedJob // ignore: cast_nullable_to_non_nullable
              as JobEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JobEntityCopyWith<$Res> get updatedJob {
    return $JobEntityCopyWith<$Res>(_value.updatedJob, (value) {
      return _then(_value.copyWith(updatedJob: value));
    });
  }
}

/// @nodoc

class _$JobsListUpdated implements JobsListUpdated {
  const _$JobsListUpdated({required this.updatedJob});

  @override
  final JobEntity updatedJob;

  @override
  String toString() {
    return 'JobsListEvent.jobsListUpdated(updatedJob: $updatedJob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsListUpdated &&
            (identical(other.updatedJob, updatedJob) ||
                other.updatedJob == updatedJob));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedJob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsListUpdatedCopyWith<_$JobsListUpdated> get copyWith =>
      __$$JobsListUpdatedCopyWithImpl<_$JobsListUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jobsListFetched,
    required TResult Function(JobEntity updatedJob) jobsListUpdated,
  }) {
    return jobsListUpdated(updatedJob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? jobsListFetched,
    TResult? Function(JobEntity updatedJob)? jobsListUpdated,
  }) {
    return jobsListUpdated?.call(updatedJob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jobsListFetched,
    TResult Function(JobEntity updatedJob)? jobsListUpdated,
    required TResult orElse(),
  }) {
    if (jobsListUpdated != null) {
      return jobsListUpdated(updatedJob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobsListFetched value) jobsListFetched,
    required TResult Function(JobsListUpdated value) jobsListUpdated,
  }) {
    return jobsListUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobsListFetched value)? jobsListFetched,
    TResult? Function(JobsListUpdated value)? jobsListUpdated,
  }) {
    return jobsListUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobsListFetched value)? jobsListFetched,
    TResult Function(JobsListUpdated value)? jobsListUpdated,
    required TResult orElse(),
  }) {
    if (jobsListUpdated != null) {
      return jobsListUpdated(this);
    }
    return orElse();
  }
}

abstract class JobsListUpdated implements JobsListEvent {
  const factory JobsListUpdated({required final JobEntity updatedJob}) =
      _$JobsListUpdated;

  JobEntity get updatedJob;
  @JsonKey(ignore: true)
  _$$JobsListUpdatedCopyWith<_$JobsListUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
