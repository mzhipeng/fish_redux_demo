import 'package:fish_redux/fish_redux.dart';

import 'state.dart';

enum ItemTodoAction { done, edit, onEdit, remove, onRemove }

class ItemTodoActionCreator {
  static Action doneAction(String id) {
    return Action(ItemTodoAction.done, payload: id);
  }

  static Action editAction(ItemTodoState todoState) {
    return Action(ItemTodoAction.edit, payload: todoState);
  }

  static Action onEditAction(String id) {
    return Action(ItemTodoAction.onEdit, payload: id);
  }

  static Action removeAction(String id) {
    return Action(ItemTodoAction.remove, payload: id);
  }

  static Action onRemoveAction(String id) {
    return Action(ItemTodoAction.onRemove, payload: id);
  }
}
