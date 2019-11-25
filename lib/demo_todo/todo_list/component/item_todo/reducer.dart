import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemTodoComponentState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemTodoComponentState>>{
      ItemTodoComponentAction.action: _onAction,
    },
  );
}

ItemTodoComponentState _onAction(ItemTodoComponentState state, Action action) {
  final ItemTodoComponentState newState = state.clone();
  return newState;
}
