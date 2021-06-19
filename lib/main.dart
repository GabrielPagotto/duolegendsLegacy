import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/app.dart';
import 'src/providers/_providers.dart';
import 'src/lang/language.dart';

final Language dialogues = new Language(languageRegion: 'pt-br');

void main() async {
  runApp(
    MultiProvider(providers: providers, child: App()),
  );
}
