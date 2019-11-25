import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemTodoComponentState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(8),
    child: Card(
      child: Column(
        children: <Widget>[
          Text(''),
          Expanded(child: Text('')),
          Container(
            decoration:
                BoxDecoration(border: Border(top: BorderSide(color: Colors.grey, width: 1))),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Icon(Icons.check_box_outline_blank),
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
