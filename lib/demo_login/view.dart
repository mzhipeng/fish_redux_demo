import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.white,
    child: Center(
      child: RaisedButton(
        child: Text('登录'),
        onPressed: () {
          dispatch(LoginActionCreator.onPushHomeAction());
        },
      ),
    ),
  );
}
