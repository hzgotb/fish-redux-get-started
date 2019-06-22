import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<SignInPageState> buildEffect() {
  return combineEffects({
    SignInPageAction.submit: _login,
  });
}

_login(Action action, Context<SignInPageState> ctx) {
//  try {
//
//  } catch {
//
//  }
}