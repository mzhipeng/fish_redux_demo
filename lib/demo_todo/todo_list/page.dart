import 'package:fish_redux/fish_redux.dart';

import 'adapter/adapter.dart';

///
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TodoListPage extends Page<TodoListState, Map<String, dynamic>> {
  static const String KEY = 'TodoListPage';

  TodoListPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<TodoListState>(
            adapter: NoneConn<TodoListState>() + TodoListAdapter(),
//            slots: <String, Dependent<TodoListState>>{},
          ),
//          middleware: <Middleware<TodoListState>>[],
        );
}
