import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TodoListPage extends Page<TodoListState, Map<String, dynamic>> {
  TodoListPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<TodoListState>(adapter: null, slots: <String, Dependent<TodoListState>>{}),
          middleware: <Middleware<TodoListState>>[],
        );
}
