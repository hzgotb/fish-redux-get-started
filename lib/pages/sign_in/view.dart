import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'action.dart';

Widget viewBuilder(SignInPageState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            // Account TextField
            Container(
              margin: EdgeInsets.fromLTRB(40.0, 26.0, 40.0, 10.0),
              child: TextField(
                controller: state.accountController,
                decoration: InputDecoration(
                  labelText: 'Account',
                ),
              ),
            ),
            //  Password TextField
            Container(
              margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0.0),
              child: TextField(
                controller: state.passwordController,
                obscureText: state.obscureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(state.obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => dispatch(SignInPageActionCreator.toggleObscureText()),
                  ),
                ),
              ),
            ),
            // LoginButton
            Container(
              margin: EdgeInsets.fromLTRB(40.0, 26.0, 40.0, 0),
              width: 180.0,
              height: 48.0,
              child: RaisedButton(
                color: Color(0xFFffd84d),
                onPressed: () => dispatch(SignInPageActionCreator.submit()),
                child: Text('LOGIN', style: TextStyle(fontSize: 18.0)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}