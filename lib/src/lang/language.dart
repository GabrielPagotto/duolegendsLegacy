import 'dart:io' show File;
import 'dart:convert' show json;

import 'package:path_provider/path_provider.dart';

class Language {
  final String languageRegion;

  Language({required this.languageRegion});

  late Map<String, dynamic> dict;

  Future start() async {
    final directory = await getApplicationDocumentsDirectory();
    print('okay');
    print(directory);
    final String _arquiveContent = await new File('src/lang/pt-br.json').readAsString();

    return this.dict = json.decode(_arquiveContent);
  }
}
