import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

/// component
import 'component/item_todo/state.dart';

Effect<TodoListState> buildEffect() {
  return combineEffects(<Object, Effect<TodoListState>>{
    Lifecycle.initState: _init,
    TodoListAction.action: _onAction,
  });
}

void _init(Action action, Context<TodoListState> ctx) {
  final List<ItemTodoState> items = <ItemTodoState>[
    ItemTodoState(
      id: '0',
      title: 'Hello world',
      content: 'Learn how to program.',
      isDone: true,
    ),
    ItemTodoState(
      id: '1',
      title: 'Hello Flutter',
      content: 'Learn how to build a flutter application.',
      isDone: true,
    ),
    ItemTodoState(
      id: '2',
      title: 'How Fish Redux',
      content: 'Learn how to use Fish Redux in a flutter application.',
      isDone: false,
    )
  ];
  ctx.dispatch(TodoListActionCreator.initItemsAction(items));
}

void _onAction(Action action, Context<TodoListState> ctx) {}
