import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/styles/sizes.dart';

class ErrorMessageWidget extends StatelessWidget {
  final String text;

  const ErrorMessageWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: DColors.baseColor.secondary,
          fontSize: Sizes.text.large,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}