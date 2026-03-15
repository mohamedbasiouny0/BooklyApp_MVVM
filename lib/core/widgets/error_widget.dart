import 'package:flutter/material.dart';
import 'package:test1/core/utils/styles.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.211,
      width: MediaQuery.of(context).size.width,
      child: Text(errMessage, style: Styles.regularTextStyle18),
    );
  }
}
