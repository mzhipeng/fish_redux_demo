import 'package:fish_redux/fish_redux.dart';

import 'component/item_todo/state.dart';

enum TodoListAction { action, initItems }

class TodoListActionCreator {
  static Action initItemsAction(List<ItemTodoState> items) {
    return Action(TodoListAction.initItems, payload: items);
  }

  static Action onAction() {
    return const Action(TodoListAction.action);
  }
}
