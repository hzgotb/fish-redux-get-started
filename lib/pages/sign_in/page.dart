import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';
import 'reducer.dart';
import 'effect.dart';

class SignInPage extends Page<SignInPageState, Map<String, dynamic>> {
  SignInPage() : super(
    initState: initState,
    view: viewBuilder,
    reducer: buildReducer(),
    effect: buildEffect(),
  );
}