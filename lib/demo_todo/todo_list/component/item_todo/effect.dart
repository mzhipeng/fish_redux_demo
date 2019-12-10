import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/common/utils/dialog_utils.dart';
import 'package:fish_redux_demo/demo_todo/todo_edit/page.dart';
import 'package:fish_redux_demo/demo_todo/todo_list/adapter/action.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<ItemTodoState> buildEffect() {
  return combineEffects(<Object, Effect<ItemTodoState>>{
    ItemTodoAction.onEdit: _onEdit,
    ItemTodoAction.onRemove: _onRemove,
  });
}

void _onEdit(Action action, Context<ItemTodoState> ctx) {
  if (ctx.state.id == action.payload) {
    Navigator.of(ctx.context).pushNamed('$TodoEditPage', arguments: ctx.state).then((todo) {
      if (todo != null) {
        ctx.dispatch(ItemTodoActionCreator.editAction(todo));
      }
    });
  }
}

void _onRemove(Action action, Context<ItemTodoState> ctx) async {
  await showDialog<bool>(
      context: ctx.context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('提示'),
          content: Text('是否删除${ctx.state.title}'),
          actions: <Widget>[
            InkWell(
              child: Text('取消'),
              onTap: () {
                Navigator.pop(ctx.context, false);
              },
            ),
            InkWell(
              child: Text('删除'),
              onTap: () {
                Navigator.pop(ctx.context, true);
              },
            ),
          ],
        );
      }).then((isRemove) {
    if (isRemove) {
      DialogUtils.showProgress(ctx.context, 'loading...');
      // 模拟网络删除
      Future.delayed(Duration(seconds: 3)).then((_) {
        DialogUtils.dismissProgress();
        ctx.dispatch(TodoListAdapterActionCreator.removeAction(action.payload));
      });
    }
  });
}
