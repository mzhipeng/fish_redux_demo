import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemTodoState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(8),
    height: 200,
    child: Card(
      child: Column(
        children: <Widget>[
          Text(state.title),
          Expanded(child: Center(child: Text(state.content, textAlign: TextAlign.center,))),
          Container(
            decoration:
                BoxDecoration(border: Border(top: BorderSide(color: Colors.grey, width: 1))),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(state.id),
                ),
                GestureDetector(
                  child: Icon(Icons.edit),
                  onTap: () {},
                ),
                GestureDetector(
                  child:
                      (state.isDone ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank)),
                  onTap: () {},
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
