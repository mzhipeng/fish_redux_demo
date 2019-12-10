import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemTodoState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemTodoState>>{
      ItemTodoAction.done: _makeDone,
      ItemTodoAction.edit: _editCompleted,
    },
  );
}

ItemTodoState _makeDone(ItemTodoState state, Action action) {
  String id = action.payload;
  if (state.id == id) {
    return state.clone()..isDone = !state.isDone;
  }
  return state;
}

ItemTodoState _editCompleted(ItemTodoState state, Action action) {
  final ItemTodoState todo = action.payload;
  if (state.id == todo.id) {
    return state.clone()
      ..title = todo.title
      ..content = todo.content;
  }
  return state;
}
