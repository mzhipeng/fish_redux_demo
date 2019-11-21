import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TodoListState state, Dispatch dispatch, ViewService viewService) {
  var adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      title: Text('待办列表'),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text('全部待办'),
                Text('已完成待办'),
                Text('未完成待办'),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: adapter.itemCount,
            itemBuilder: adapter.itemBuilder,
          ))
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    ),
  );
}
