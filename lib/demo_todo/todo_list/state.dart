import 'package:fish_redux/fish_redux.dart';

class TodoListState extends MutableSource implements Cloneable<TodoListState> {

  @override
  TodoListState clone() {
    return TodoListState();
  }

  @override
  Object getItemData(int index) {
    return null;
  }

  @override
  String getItemType(int index) {
    return null;
  }

  @override
  int get itemCount => null;

  @override
  void setItemData(int index, Object data) {
  }
}

TodoListState initState(Map<String, dynamic> args) {
  return TodoListState();
}
