import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/demo_todo/todo_list/component/item_todo/state.dart';
import 'package:flutter/material.dart';

class TodoEditState implements Cloneable<TodoEditState> {
  ItemTodoState todo;

  TextEditingController titleController;
  TextEditingController contentController;

  @override
  TodoEditState clone() {
    return TodoEditState()
      ..todo = todo
      ..titleController = titleController
      ..contentController = contentController;
  }
}

TodoEditState initState(ItemTodoState args) {
  final state = TodoEditState();
  state.todo = args?.clone() ?? ItemTodoState();
  state.titleController = TextEditingController(text: args?.title);
  state.contentController = TextEditingController(text: args?.content);
  return state;
}
