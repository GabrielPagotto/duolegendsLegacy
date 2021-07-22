import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolegends/src/application.dart';
import 'package:duolegends/src/providers/_providers.dart';
import 'package:duolegends/src/screens/statement_managers.dart';

void main() async {
  runApp(
    MultiProvider(providers: providerss..addAll(providers), child: Application()),
  );
}
