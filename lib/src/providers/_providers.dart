import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'colors_state.dart';
import 'home_state.dart';
import 'register_state.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<ColorsState>(create: (_) => ColorsState()),
  ChangeNotifierProvider<HomeState>(create: (_) => HomeState()),
  ChangeNotifierProvider<RegisterState>(create: (_) => RegisterState()),
];
