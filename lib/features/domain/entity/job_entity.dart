import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/response/job_response.dart';

part 'job_entity.freezed.dart';

part 'job_entity.g.dart';

enum JobStatus {
  accepted,
  rejected,
  idle,
}

@freezed
class JobEntity with _$JobEntity {
  const factory JobEntity({
    required String id,
    required String title,
    @Default(JobStatus.idle) JobStatus status,
    required String pickupAddress,
    required String dropOffAddress,
    required DateTime datePosted,
    required DateTime deliveryDate,
  }) = _JobEntity;

  factory JobEntity.fromJson(Map<String, dynamic> json) => _$JobEntityFromJson(json);

  factory JobEntity.fromJobResponse(JobResponse jobResponse) => JobEntity(
        id: jobResponse.id.toString(),
        title: jobResponse.title,
        status: JobStatus.idle,
        pickupAddress: jobResponse.pickup.firstAddressLine + ', ' + jobResponse.pickup.postcode,
        dropOffAddress: jobResponse.dropOff.firstAddressLine + ', ' + jobResponse.dropOff.postcode,
        datePosted: DateTime.parse(jobResponse.datePosted),
        deliveryDate: DateTime.parse(jobResponse.expectedDeliveryDate),
      );
}

extension JobEntityExtension on JobEntity {
  String get deliveryDateFormatted => '${deliveryDate.day}/${deliveryDate.month}/${deliveryDate.year}';
}
