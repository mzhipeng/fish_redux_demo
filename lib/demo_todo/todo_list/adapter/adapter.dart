import 'package:fish_redux/fish_redux.dart';

import '../state.dart';
import 'reducer.dart';

class TodoListAdapterAdapter extends SourceFlowAdapter<TodoListState> {
  TodoListAdapterAdapter()
      : super(
          pool: <String, Component<Object>>{
          },
          reducer: buildReducer(),
        );
}
