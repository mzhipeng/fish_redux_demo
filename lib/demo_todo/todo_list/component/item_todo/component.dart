import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ItemTodoComponent extends Component<ItemTodoState> {
  static const String KEY = 'ItemTodoComponent';

  ItemTodoComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView
        );
}
