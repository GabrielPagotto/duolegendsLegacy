import 'package:flutter/material.dart';

class ColorsConstants {
  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color quaternary;
  late Color quintenary;
  late Color sextenary;

  void dark() {
    this.primary = Color(0xFF000000);
    this.secondary = Color(0xFFE50913);
    this.tertiary = Color(0xFF131313);
    this.quaternary = Color(0xFF333333);
    this.quintenary = Color(0xFFA0A0A0);
    this.sextenary = Color(0xFFFFFFFF);
  }
}
