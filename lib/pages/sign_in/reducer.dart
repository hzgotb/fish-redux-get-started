import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'action.dart';

SignInPageState _toggleObscureText(SignInPageState state, Action action) {
  return state.clone()
    ..obscureText = !state.obscureText;
}

SignInPageState _updateSubmitting(SignInPageState state, Action action) {
  return state.clone()
    ..submitting = action.payload;
}

Reducer<SignInPageState> buildReducer() {
  return asReducer({
    SignInPageAction.toggleObscureText: _toggleObscureText,
    SignInPageAction.updateSubmitting: _updateSubmitting,
  });
}