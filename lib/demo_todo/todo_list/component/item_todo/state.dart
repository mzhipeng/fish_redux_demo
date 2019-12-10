import 'package:fish_redux/fish_redux.dart';

class ItemTodoState implements Cloneable<ItemTodoState> {
  String id;
  String title;
  String content;
  bool isDone;

  ItemTodoState({this.id, this.title, this.content, this.isDone = false}) {
    id ??= DateTime.now().toIso8601String();
  }

  @override
  ItemTodoState clone() {
    return ItemTodoState()
      ..id = id
      ..title = title
      ..content = content
      ..isDone = isDone;
  }
}