import 'package:fish_redux/fish_redux.dart';

enum SignInPageAction {
  toggleObscureText,
  submit,
}

class SignInPageActionCreator {
  static Action toggleObscureText() {
    return const Action(SignInPageAction.toggleObscureText);
  }
  static Action submit() {
    return const Action(SignInPageAction.submit);
  }
}