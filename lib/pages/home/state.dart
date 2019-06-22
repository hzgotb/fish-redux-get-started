import 'package:fish_redux/fish_redux.dart';

import 'package:fish_redux_get_started/models/person.dart';

class HomePageState implements Cloneable<HomePageState> {

  List<Person> list;

  @override
  HomePageState clone() {
    return HomePageState()
      ..list = list;
  }
}

HomePageState initState(Map<String, dynamic> args) {
  return HomePageState()
      ..list = List<Person>();
}