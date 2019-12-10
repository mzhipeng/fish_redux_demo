import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/demo_todo/todo_list/component/item_todo/state.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<TodoEditState> buildEffect() {
  return combineEffects(<Object, Effect<TodoEditState>>{
    TodoEditAction.onDone: _onDone,
  });
}

void _onDone(Action action, Context<TodoEditState> ctx) {
  Navigator.pop<ItemTodoState>(
      ctx.context,
      ctx.state.todo.clone()
        ..title = ctx.state.titleController.text
        ..content = ctx.state.contentController.text);
}
