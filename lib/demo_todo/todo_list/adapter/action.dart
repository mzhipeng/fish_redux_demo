import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/demo_todo/todo_list/component/item_todo/state.dart';

enum TodoListAdapterAction { add, remove }

class TodoListAdapterActionCreator {
  static Action addAction(ItemTodoState todo) {
    return Action(TodoListAdapterAction.add, payload: todo);
  }

  static Action removeAction(String id) {
    return Action(TodoListAdapterAction.remove, payload: id);
  }
}
