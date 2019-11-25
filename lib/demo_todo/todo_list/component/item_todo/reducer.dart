import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemTodoState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemTodoState>>{
      ItemTodoAction.action: _onAction,
    },
  );
}

ItemTodoState _onAction(ItemTodoState state, Action action) {
  final ItemTodoState newState = state.clone();
  return newState;
}
