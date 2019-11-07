import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction { onLogin, onRegister, onPushHome }

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
}
