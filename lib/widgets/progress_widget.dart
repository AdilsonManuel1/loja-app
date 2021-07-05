import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final double value;

  const ProgressWidget({Key key, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
        value: value,
        backgroundColor:Color(0xF000120),
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xF1020000)),
    );
  }
}