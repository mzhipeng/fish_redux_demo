import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction { onLogin, onRegister, onPushHome, onPushTodo }

class LoginActionCreator {
  static Action onLoginAction() {
    return const Action(LoginAction.onLogin);
  }

  static Action onRegisterAction() {
    return const Action(LoginAction.onRegister);
  }

  static onPushHomeAction() {
    return const Action(LoginAction.onPushHome);
  }

  static onPushTodoAction() {
    return const Action(LoginAction.onPushTodo);
  }
}
