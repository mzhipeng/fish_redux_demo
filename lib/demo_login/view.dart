import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('登录'),
              onPressed: () {
                dispatch(LoginActionCreator.onPushHomeAction());
              },
            ),
            RaisedButton(
              child: Text('TODO'),
              onPressed: () {
                dispatch(LoginActionCreator.onPushTodoAction());
              },
            ),
          ],
        ),
      ),
    ),
  );
}
