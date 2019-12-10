import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TodoEditState> buildReducer() {
  return asReducer(
    <Object, Reducer<TodoEditState>>{
//      TodoEditAction.action: _onAction,
    },
  );
}

TodoEditState _onAction(TodoEditState state, Action action) {
  final TodoEditState newState = state.clone();
  return newState;
}
