import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/demo_todo/todo_list/component/item_todo/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TodoEditPage extends Page<TodoEditState, ItemTodoState> {
  TodoEditPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TodoEditState>(
                adapter: null,
                slots: <String, Dependent<TodoEditState>>{
                }),
            middleware: <Middleware<TodoEditState>>[
            ],);

}
