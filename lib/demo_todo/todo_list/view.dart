import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'adapter/adapter.dart';
import 'state.dart';

Widget buildView(
    TodoListState state, Dispatch dispatch, ViewService viewService) {
  var adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      title: Text('待办列表'),
    ),
    body: SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    '全部待办: ${adapter.itemCount}',
                    textAlign: TextAlign.center,
                  )),
                  Expanded(
                      child: Text(
                    '已完成待办: ',
                    textAlign: TextAlign.center,
                  )),
                  Expanded(
                      child: Text(
                    '未完成待办: ',
                    textAlign: TextAlign.center,
                  )),
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
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    ),
  );
}
