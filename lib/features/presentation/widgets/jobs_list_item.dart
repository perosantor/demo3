import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/styles/sizes.dart';
import '../../domain/entity/job_entity.dart';

class JobListItem extends StatelessWidget {
  final JobEntity job;
  final Function() onAccepted;
  final Function() onRejected;

  const JobListItem({
    Key? key,
    required this.job,
    required this.onAccepted,
    required this.onRejected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Sizes.padding.standard,
        right: Sizes.padding.standard,
        top: Sizes.padding.standard,
      ),
      child: Card(
        elevation: Sizes.elevation.small,
        child: Padding(
          padding: const EdgeInsets.only(left: 21.0, top: 18.0, bottom: 15.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery of ${job.title}',
                style: TextStyle(
                  fontSize: Sizes.text.large,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  'Pick-up: ${job.pickupAddress}',
                  style: TextStyle(
                    fontSize: Sizes.text.small,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  'Drop-off: ${job.dropOffAddress}',
                  style: TextStyle(
                    fontSize: Sizes.text.small,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  'Expected delivery date: ${job.deliveryDate.day}/${job.deliveryDate.month}/${job.deliveryDate.year}',
                  style: TextStyle(
                    fontSize: Sizes.text.tiny,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                        onPressed: onRejected,
                        child: Text(
                          'REJECT',
                          style: TextStyle(color: DColors.baseColor.secondary),
                        )),
                    const SizedBox(
                      width: 16.0,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: DColors.baseColor.secondary,
                      ),
                      onPressed: onAccepted,
                      child: Text(
                        'ACCEPT',
                        style: TextStyle(color: DColors.baseColor.primary),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

