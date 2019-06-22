import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'action.dart';

Reducer<SignInPageState> buildReducer() {
  return asReducer({
    SignInPageAction.toggleObscureText: _toggleObscureText,
  });
}

SignInPageState _toggleObscureText(SignInPageState state, Action action) {
  return state.clone()
    ..obscureText = !state.obscureText;
}