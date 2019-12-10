import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/demo_todo/todo_list/component/item_todo/state.dart';

import '../state.dart';
import 'action.dart';

Reducer<TodoListState> buildReducer() {
  return asReducer(
    <Object, Reducer<TodoListState>>{
      TodoListAdapterAction.add: _addTodo,
      TodoListAdapterAction.remove: _removeTodo,
    },
  );
}

TodoListState _addTodo(TodoListState state, Action action) {
  return state.clone()..items = (state.items.toList()..add(action.payload));
}

TodoListState _removeTodo(TodoListState state, Action action) {
  final removeId = action.payload;
  return state.clone()
    ..items = (state.items.toList()..removeWhere((ItemTodoState it) => it.id == removeId));
}
