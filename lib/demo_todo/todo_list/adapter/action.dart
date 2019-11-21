import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TodoListAdapterAction { action }

class TodoListAdapterActionCreator {
  static Action onAction() {
    return const Action(TodoListAdapterAction.action);
  }
}
