import 'package:fish_redux/fish_redux.dart';

enum HomePageAction {
  refresh
}

class HomePageActionCreator {
  static Action refresh() {
    return const Action(HomePageAction.refresh);
  }
}