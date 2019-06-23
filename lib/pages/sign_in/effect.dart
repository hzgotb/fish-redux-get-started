import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

_login(Action action, Context<SignInPageState> ctx) {
 try {
   ctx.dispatch(SignInPageActionCreator.updateSubmitting(true));
   
 } catch (e) {
   throw e;
 }
}

Effect<SignInPageState> buildEffect() {
  return combineEffects({
    SignInPageAction.submit: _login,
  });
}