import 'package:fish_redux/fish_redux.dart';

enum ItemTodoComponentAction {
  action,

}

class ItemTodoComponentActionCreator {
  static Action onAction() {
    return const Action(ItemTodoComponentAction.action);
  }
}
