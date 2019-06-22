import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';
import 'effect.dart';
import 'reducer.dart';

class HomePage extends Page<HomePageState, Map<String, dynamic>> {
  HomePage() : super(
    initState: initState,
    view: viewBuilder,
    effect: buildEffect(),
    reducer: buildReducer(),
  );
}