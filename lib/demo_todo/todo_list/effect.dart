import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/demo_todo/todo_edit/page.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'adapter/action.dart';
import 'state.dart';

/// component
import 'component/item_todo/state.dart';

Effect<TodoListState> buildEffect() {
  return combineEffects(<Object, Effect<TodoListState>>{
    Lifecycle.initState: _init,
    TodoListAction.onAdd: _onAdd,
  });
}

void _init(Action action, Context<TodoListState> ctx) {
  final List<ItemTodoState> items = <ItemTodoState>[
    ItemTodoState(
      id: '0',
      title: 'Hello world',
      content: 'Learn how to program.',
      isDone: true,
    ),
    ItemTodoState(
      id: '1',
      title: 'Hello Flutter',
      content: 'Learn how to build a flutter application.',
      isDone: true,
    ),
    ItemTodoState(
      id: '2',
      title: 'How Fish Redux',
      content: 'Learn how to use Fish Redux in a flutter application.',
      isDone: false,
    )
  ];
  ctx.dispatch(TodoListActionCreator.initItemsAction(items));
}

void _onAdd(Action action, Context<TodoListState> ctx) {
  Navigator.pushNamed(ctx.context, '$TodoEditPage').then((todo) {
    if (todo != null) {
      ctx.dispatch(TodoListAdapterActionCreator.addAction(todo));
    }
  });
}
