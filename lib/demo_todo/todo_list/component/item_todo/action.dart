import 'package:fish_redux/fish_redux.dart';

enum ItemTodoAction {
  action,

}

class ItemTodoActionCreator {
  static Action onAction() {
    return const Action(ItemTodoAction.action);
  }
}
