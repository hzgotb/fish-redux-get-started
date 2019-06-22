import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';

class SignInPageState implements Cloneable<SignInPageState> {

  TextEditingController accountController;
  TextEditingController passwordController;

  bool obscureText;
  bool submitting;

  @override
  SignInPageState clone() {
    return SignInPageState()
      ..obscureText = obscureText
      ..submitting = submitting
      ..accountController = accountController
      ..passwordController = passwordController;
  }
}

SignInPageState initState(Map<String, dynamic> args) {
  return SignInPageState()
    ..obscureText = true
    ..submitting =  false
    ..accountController = TextEditingController()
    ..passwordController = TextEditingController();
}