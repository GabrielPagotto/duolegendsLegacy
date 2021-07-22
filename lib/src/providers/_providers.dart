import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'colors_state.dart';
import 'home_state.dart';

List<SingleChildWidget> providerss = [
  ChangeNotifierProvider<ColorsState>(create: (_) => ColorsState()),
  ChangeNotifierProvider<HomeState>(create: (_) => HomeState()),
];
