import 'package:fish_redux/fish_redux.dart';

///
import 'package:fish_redux_demo/demo_todo/todo_list/component/item_todo/component.dart';

///
import '../state.dart';
import 'reducer.dart';

class TodoListAdapter extends SourceFlowAdapter<TodoListState> {
  TodoListAdapter()
      : super(
          pool: <String, Component<Object>>{
            '$ItemTodoComponent': ItemTodoComponent(),
          },
          reducer: buildReducer(),
        );
}
