import 'dart:async';

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
    if (job.status == JobStatus.rejected) return Container();
    return Padding(
      padding: EdgeInsets.only(
        left: Sizes.padding.standard,
        right: Sizes.padding.standard,
        top: Sizes.padding.small,
      ),
      child: Card(
        elevation: Sizes.elevation.small,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 21.0, top: 12.0, bottom: 15.0, right: 18.0),
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
                  'Expected delivery date: ${job.deliveryDateFormatted}',
                  style: TextStyle(
                    fontSize: Sizes.text.tiny,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              if (job.status != JobStatus.accepted)
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _Button(
                        backgroundColor: DColors.baseColor.primary,
                        text: "REJECT",
                        textColor: DColors.baseColor.secondary,
                        onPressed: onRejected,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      _Button(
                        backgroundColor: DColors.baseColor.secondary,
                        text: "ACCEPT",
                        textColor: DColors.baseColor.primary,
                        onPressed: onAccepted,
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

class _Button extends StatefulWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final Function() onPressed;

  const _Button({
    Key? key,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<_Button> createState() => _ButtonState();
}

class _ButtonState extends State<_Button> {
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanCancel: () => _timer?.cancel(),
      onPanDown: (_) => {
        _timer = Timer(const Duration(seconds: 5), widget.onPressed),
      },
      child: SizedBox(
        width: 110.0,
        height: 36.0,
        child: Material(
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(7.0),
            ),
            side: BorderSide(color: Colors.black12, width: 1),
          ),
          color: widget.backgroundColor,
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(color: widget.textColor),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
