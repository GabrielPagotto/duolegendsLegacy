import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:duolegends/src/global.dart';
import 'package:duolegends/src/screens/register/register_state.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<Global>(create: (_) => Global()),
  ChangeNotifierProvider<RegisterState>(create: (_) => RegisterState()),
];
