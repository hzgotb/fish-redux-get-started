import 'package:fish_redux/fish_redux.dart';

enum SignInPageAction {
  toggleObscureText,
  updateSubmitting,
  submit,
}

class SignInPageActionCreator {
  static Action toggleObscureText() {
    return const Action(SignInPageAction.toggleObscureText);
  }
  static Action updateSubmitting(bool value) {
    return Action(SignInPageAction.updateSubmitting, payload: value);
  }
  static Action submit() {
    return const Action(SignInPageAction.submit);
  }
}