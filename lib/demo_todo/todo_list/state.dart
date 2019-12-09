import 'package:fish_redux/fish_redux.dart';

import 'component/item_todo/component.dart';
import 'component/item_todo/state.dart';

class TodoListState extends MutableSource implements Cloneable<TodoListState> {
  List<ItemTodoState> items;

  @override
  TodoListState clone() {
    return TodoListState()..items = items;
  }

  @override
  ItemTodoState getItemData(int index) {
    return items[index];
  }

  @override
  String getItemType(int index) {
    return '$ItemTodoComponent';
  }

  @override
  int get itemCount => items?.length ?? 0;

  @override
  void setItemData(int index, Object data) => items[index] = data;
}

TodoListState initState(Map<String, dynamic> args) {
  return TodoListState();
}
