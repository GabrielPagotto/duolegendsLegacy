import 'package:duolegends/src/components/bottom_bar_component.dart';
import 'package:flutter/material.dart';
import 'package:duolegends/src/components/top_bar_component.dart';

class AppBodyComponent extends StatelessWidget {
  final TopBarComponent? topBar;
  final Widget? child;
  final BottomBarComponent? bottomBar;

  const AppBodyComponent({Key? key, this.topBar, this.child, this.bottomBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          if (topBar != null) this.topBar!,
          Expanded(child: Container(child: child)),
          if (bottomBar != null) this.bottomBar!,
        ],
      ),
    );
  }
}
