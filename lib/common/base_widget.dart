//import 'package:flutter/material.dart';
///// index
////export 'package:education_flutter/res/index_res.dart';
////export 'package:education_flutter/provide/index_provide.dart';
////export 'package:education_flutter/router/index_router.dart';
//
/////网络请求
////export 'package:education_flutter/common/api/net_utils.dart';
////export 'package:education_flutter/common/api/api.dart';
////export 'package:education_flutter/common/api/result_data.dart';
//
///// app common
//import '../app.dart';
//export '../app.dart';
//
///// utils
//import 'utils/log_util.dart';
//import 'utils/dialog_utils.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//
/////
//class Base {
//  showHint(BuildContext context, String content) {
//    DialogUtils.showHint(context, content);
//  }
//
//  showProgress({String msg = '正在加载中...'}) {
//    DialogUtils.showProgress(msg);
//  }
//
//  dismiss() {
//    DialogUtils.dismissProgress();
//  }
//
//  bool isEmpty(String str) => str == null || str.isEmpty;
//
//  ///----------------------------------------------------
//
//  /// 页面跳转
//
//  Future navigateTo(BuildContext context, String path,
//      {Map<String, String> params, bool replace = false}) {
//    return App.navigateTo(context, path, params: params, replace: replace);
//  }
//
//  void pop(BuildContext context) {
//    App.pop(context);
//  }
//
//  /// image ----------------------------------------------------
//
//  ///
//  AssetImage assetImage(String namePath) => AssetImage("assets/images/$namePath");
//
//  String assetName(String namePath) => "assets/images/$namePath";
//
//  /// image ----------------------------------------------------
//
//  ///screen ----------------------------------------------------
//
////  h(double height) => ScreenUtil.instance.setHeight(height);
////
////  w(double width) => ScreenUtil.instance.setWidth(width);
////
////  sp(double fontSize) => ScreenUtil.instance.setSp(fontSize);
////
////  double get screenDpW => ScreenUtil.screenWidthDp;
////
////  double get screenDpH => ScreenUtil.screenHeightDp;
//
////  double get screenHalfDpW => screenDpW * 0.5;
//
////  double get screenHalfDpH => screenDpH * 0.5;
//
//
//  /// 安全区域的dp高度
////  double get safeContentH => screenDpH - ScreenUtil.statusBarHeight - ScreenUtil.bottomBarHeight;
//
////  double get statusBarHeight => ScreenUtil.statusBarHeight;
//
////  double get bottomBarHeight => ScreenUtil.bottomBarHeight;
//
//  /// 实际安全区域的dp高度
////  double get safeH => safeContentH - kToolbarHeight - kBottomNavigationBarHeight;
//
////  double get appBarHeight => kToolbarHeight;
//
////  double get appNavBarHeight => kBottomNavigationBarHeight;
//
//  ///----------------------------------------------------
//
//  Widget get emptyCenterWidget => Center(
//        child: Text("内容空"),
//      );
//
//  /// msg：提示的文字，String类型。
//  /// toastLength: 提示的样式，主要是长度，有两个值可以选择：Toast.LENGTH_SHORT ：短模式，就是比较短。Toast.LENGTH_LONG : 长模式，就是比较长。
//  /// gravity：提示出现的位置，分别是上中下，三个选项。ToastGravity.TOP顶部提示，ToastGravit.CENTER中部提示，ToastGravity.BOTTOM底部提示。
//  /// bgcolor: 背景颜色，跟从Flutter颜色。
//  /// textcolor：文字的颜色。
//  /// fontSize： 文字的大小。
//  void show(String msg) => Fluttertoast.showToast(msg: msg);
//
//  printLog(Object o) {
//    debugPrint("=============================START============================= LOG =>");
//    LogUtil.v(o);
//    debugPrint("==============================END============================== LOG =>");
//  }
//}
//
//abstract class BaseStatelessWidget extends StatelessWidget with Base {}
//
//abstract class BaseStatefulWidget extends StatefulWidget with Base {}
//
//abstract class BaseState<T extends StatefulWidget> extends State with Base {}
