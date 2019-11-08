import 'package:flutter/material.dart';

/// create by MZP 2019-10-31 10:30
///
/// 通用的widget
///
///
/// ShapeBorder: 类的使用
///   - BeveledRectangleBorder 扁平或“斜角”角的矩形边框
///   - CircleBorder 可用空间内适合圆的边界
///   - StadiumBorder 半圆角矩形（StadiumBorder 翻译：像体育场形状的边框）

const Color gray = Color(0xFFEEEEEE);

/// AppBar 附带右侧文字按钮
class AppBarWithRightBtn extends AppBar {
  final VoidCallback onPressed;
  final String btnText;
  final String titleText;

  AppBarWithRightBtn({this.onPressed, this.btnText = '', this.titleText = ''})
      : super(
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              child: Text(btnText),
              onPressed: btnText.isEmpty ? null : onPressed,
            )
          ],
          centerTitle: true,
          title: Text(titleText),
        );
}

/// 圆角按钮
class RoundedButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap; //点击事件
  final double width;

  RoundedButton({this.text = '确定', this.width = 100, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      highlightColor: Theme.of(context).primaryColorLight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      // 阴影
      elevation: 2,
      // 按下时的阴影
      highlightElevation: 8,
      // 禁用时的阴影
      disabledElevation: 0,
      child: Container(alignment: Alignment.center, width: width, height: 35, child: Text(text)),
      onPressed: onTap,
    );
  }
}

/// 圆环按钮
class CircularButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap; //点击事件

  CircularButton({this.text = '确定', this.onTap});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      textColor: Theme.of(context).primaryColor,
      highlightColor: Theme.of(context).primaryColorLight,
      shape: new StadiumBorder(
          side: new BorderSide(
        style: BorderStyle.solid,
        color: Theme.of(context).primaryColor,
      )),
      // 阴影
      elevation: 2,
      // 按下时的阴影
      highlightElevation: 8,
      // 禁用时的阴影
      disabledElevation: 0,
      child: Text(text),
      onPressed: onTap,
    );
  }
}

/// 圆环按钮
class CircularDivButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap; //点击事件

  CircularDivButton({this.text = '确定', this.onTap});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      textColor: Theme.of(context).primaryColor,
      highlightColor: Theme.of(context).primaryColorLight,
      shape: new StadiumBorder(
          side: new BorderSide(
            style: BorderStyle.solid,
            color: Theme.of(context).primaryColor,
          )),
      // 阴影
      elevation: 2,
      // 按下时的阴影
      highlightElevation: 8,
      // 禁用时的阴影
      disabledElevation: 0,
      child: Text(text),
      onPressed: onTap,
    );
  }
}

Decoration bottomGrayBorder = BoxDecoration(
  border: Border(bottom: BorderSide(width: 1, color: gray)),
);

Decoration topGrayBorder = BoxDecoration(
  border: Border(top: BorderSide(width: 1, color: gray)),
);

Decoration rightGrayBorder = BoxDecoration(
  border: Border(right: BorderSide(width: 1, color: gray)),
);

Decoration leftGrayBorder = BoxDecoration(
  border: Border(left: BorderSide(width: 1, color: gray)),
);

Decoration getDecoration(
    {double mLeft = 0, double mTop = 0, double mRight = 0, double mBottom = 0}) {
  return BoxDecoration(
    border: Border(
        left: BorderSide(width: mLeft, color: gray),
        top: BorderSide(width: mTop, color: gray),
        right: BorderSide(width: mRight, color: gray),
        bottom: BorderSide(width: mBottom, color: gray)),
  );
}
