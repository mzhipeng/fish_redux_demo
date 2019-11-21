import 'package:fish_redux/fish_redux.dart';

import '../state.dart';
import 'action.dart';

Reducer<TodoListState> buildReducer() {
  return asReducer(
    <Object, Reducer<TodoListState>>{
      TodoListAdapterAction.action: _onAction,
    },
  );
}

TodoListState _onAction(TodoListState state, Action action) {
  final TodoListState newState = state.clone();
  return newState;
}
