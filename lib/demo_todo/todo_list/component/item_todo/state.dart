import 'package:fish_redux/fish_redux.dart';

class ItemTodoComponentState implements Cloneable<ItemTodoComponentState> {

  @override
  ItemTodoComponentState clone() {
    return ItemTodoComponentState();
  }
}

ItemTodoComponentState initState(Map<String, dynamic> args) {
  return ItemTodoComponentState();
}
