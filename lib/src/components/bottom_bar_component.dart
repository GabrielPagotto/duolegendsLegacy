import 'package:flutter/material.dart';

class BottomBarComponent extends StatelessWidget {
  final Widget? child;

  const BottomBarComponent({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1),
        ),
      ),
      child: this.child!,
    );
  }
}
