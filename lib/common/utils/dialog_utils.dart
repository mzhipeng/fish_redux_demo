import 'package:flutter/material.dart';
/// widget
import '../widget/progress_dialog.dart';

/// create by MZP 2019-08-12 20:24
///
/// 对话框工具类
///
///
ProgressDialog _progressDialog;

class DialogUtils {
  /// 显示简单的提示类型对话框
  static void showWindow(BuildContext context, Widget content, {bool barrierDismissible = true}) {
    showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (context) {
          return AlertDialog(content: content);
        });
  }

  /// 显示简单的提示类型对话框
  static void showHint(BuildContext context, String content) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Text(content),
          );
        });
  }

  /// 显示简单的加载类型对话框
  static void showProgress(BuildContext context, String msg) {
    if (_progressDialog == null) {
      _progressDialog = new ProgressDialog(context, ProgressDialogType.Normal);
      _progressDialog.setMessage(msg);
      _progressDialog.canCancel(false);
    }
    if (!_progressDialog.isShowing()) {
//      _progressDialog.update(message: msg);
      _progressDialog.show();
    }
  }

  static void dismissProgress() {
    if (_progressDialog != null) {
      _progressDialog.hide();
    }
  }
}
