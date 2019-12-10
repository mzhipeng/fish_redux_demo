import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TodoEditState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('待办事项'),
    ),
    body: SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: state.titleController,
            ),
            TextField(
              controller: state.contentController,
            ),
          ],
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.done),
      onPressed: () {
        dispatch(TodoEditActionCreator.onDoneAction());
      },
    ),
  );
}
