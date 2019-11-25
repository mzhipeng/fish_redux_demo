import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ItemTodoState> buildEffect() {
  return combineEffects(<Object, Effect<ItemTodoState>>{
    ItemTodoAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ItemTodoState> ctx) {
}
