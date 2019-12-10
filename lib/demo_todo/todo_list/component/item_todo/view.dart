import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemTodoState state, Dispatch dispatch, ViewService viewService) {
  return GestureDetector(
    child: Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 200,
        child: Column(
          children: <Widget>[
            Text(state.title),
            Expanded(
              child: Center(
                child: Text(
                  state.content,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(state.id),
                  ),
                  GestureDetector(
                    child: Icon(Icons.edit),
                    onTap: () {
                      dispatch(ItemTodoActionCreator.onEditAction(state.id));
                    },
                  ),
                  GestureDetector(
                    child: Icon((state.isDone ? Icons.check_box : Icons.check_box_outline_blank)),
                    onTap: () {
                      dispatch(ItemTodoActionCreator.doneAction(state.id));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
    onLongPress: () {
      dispatch(ItemTodoActionCreator.onRemoveAction(state.id));
    },
  );
}
