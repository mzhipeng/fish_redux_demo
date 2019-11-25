import 'package:fish_redux_demo/demo_todo/todo_list/page.dart';
import 'package:flutter/material.dart' hide Action;

import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import '../demo_home/page.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    Lifecycle.initState: _init,
    LoginAction.onLogin: _onLoginAction,
    LoginAction.onRegister: _onRegisterAction,
    LoginAction.onPushHome: _onPushHomeAction,
    LoginAction.onPushTodo: _onPushTodoAction,
  });
}

/// 初始化本地数据
void _init(Action action, Context<LoginState> ctx) {}

/// 发起登录
void _onLoginAction(Action action, Context<LoginState> ctx) {
  // 请求数据
}

/// 发起注册
void _onRegisterAction(Action action, Context<LoginState> ctx) {
  // 改变页面
//  ctx.dispatch(PageActionCreator.initToDosAction(initToDos));
}

/// 跳转首页
void _onPushHomeAction(Action action, Context<LoginState> ctx) {
  Navigator.of(ctx.context).pushNamed('$HomePage', arguments: {'phone': '123'});
}

void _onPushTodoAction(Action action, Context<LoginState> ctx) {
  Navigator.of(ctx.context).pushNamed(TodoListPage.KEY, arguments: {'phone': '123'});
}
