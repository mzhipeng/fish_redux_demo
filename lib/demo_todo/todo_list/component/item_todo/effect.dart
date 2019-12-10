import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/demo_todo/todo_edit/page.dart';
import 'package:fish_redux_demo/demo_todo/todo_list/adapter/action.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<ItemTodoState> buildEffect() {
  return combineEffects(<Object, Effect<ItemTodoState>>{
    ItemTodoAction.onEdit: _onEdit,
    ItemTodoAction.onRemove: _onRemove,
  });
}

void _onEdit(Action action, Context<ItemTodoState> ctx) {
  if (ctx.state.id == action.payload) {
    Navigator.of(ctx.context).pushNamed('$TodoEditPage', arguments: ctx.state).then((todo) {
      if (todo != null) {
        ctx.dispatch(ItemTodoActionCreator.editAction(todo));
      }
    });
  }
}

void _onRemove(Action action, Context<ItemTodoState> ctx) async {
  await Future.delayed(Duration(seconds: 3)).then((_) {
    ctx.dispatch(TodoListAdapterActionCreator.removeAction(action.payload));
  });
}
