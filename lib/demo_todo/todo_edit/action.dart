import 'package:fish_redux/fish_redux.dart';

enum TodoEditAction { onDone }

class TodoEditActionCreator {

  static Action onDoneAction() {
    return Action(TodoEditAction.onDone);
  }
}
