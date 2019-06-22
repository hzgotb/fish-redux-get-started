import 'package:flutter/material.dart';

import 'package:fish_redux/fish_redux.dart';

import 'pages/sign_in/page.dart';
import 'pages/home/page.dart';

class GetStartedDemo extends StatelessWidget {

  Widget route(BuildContext ctx, Page page) {
    final args = ModalRoute.of(ctx).settings.arguments;
    return page.buildPage(args);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: 'sign_in',
      routes: {
        'sign_in': (BuildContext ctx) => route(ctx, SignInPage()),
        'home': (BuildContext ctx) => route(ctx, HomePage()),
      },
    );
  }
}

void main() => runApp(GetStartedDemo());