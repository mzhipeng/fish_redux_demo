import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ItemTodoComponentState> buildEffect() {
  return combineEffects(<Object, Effect<ItemTodoComponentState>>{
    ItemTodoComponentAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ItemTodoComponentState> ctx) {
}
