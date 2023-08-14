
import 'package:flutter/material.dart';




class Loading extends StatelessWidget {
  final Color? color;
  Loading({this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: CircularProgressIndicator(
        strokeWidth: 1.5,
        valueColor: AlwaysStoppedAnimation(
          color != null ? color : Colors.transparent,
        ),
      ),
    );
  }
}