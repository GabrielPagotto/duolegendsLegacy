import 'package:flutter/material.dart';

class ColorsConstants {
  late Color? primary;
  late Color? secondary;
  late Color? tertiary;
  late Color? quaternary;
  late Color? quintenary;

  void light() {
    this.primary = Color(0xFF19123D);
    this.secondary = Color(0xFFBD9E59);
    this.tertiary = Color(0xFFff7f11);
    this.quaternary = Color(0xFFff1b1c);
    this.quintenary = Color(0xFFFFFFFF);
  }

  void dark() {
    this.primary = Color(0xFF062726);
    this.secondary = Color(0xFF6247aa);
    this.tertiary = Color(0xFF102b3f);
    this.quaternary = Color(0xFFe2cfea);
    this.quintenary = Color(0xFFa06cd5);
  }
}
