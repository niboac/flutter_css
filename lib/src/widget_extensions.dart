import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// extension to make it is possible to use function calling instead of Widget Constructor
///
/// For example:
///   Container(
///     color: Colors.white,
///     Offstage(
///       offstage: false,
///       child: Text('hello'),
///     ),
///   );
/// now it is also can looks like this:
///   Text('hello')
///     .intoOffstage(offstage: false)
///     .intoContainer(color: Colors.white);
///
///
///

const double normalPadding = 12;

extension Css_Widget on Widget {
  List<Widget> addNeighbor(Widget widget) {
    return <Widget>[this, widget];
  }

  List<Widget> asList() {
    return [this];
  }

  Align centerRight({
    Key key,
    double widthFactor,
    double heightFactor,
  }) {
    return Align(
      key: key,
      alignment: Alignment.centerRight,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  Align topRight({
    Key key,
    double widthFactor,
    double heightFactor,
  }) {
    return Align(
      key: key,
      alignment: Alignment.topRight,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  Align center({
    Key key,
    double widthFactor,
    double heightFactor,
  }) {
    return Align(
      key: key,
      alignment: Alignment.center,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  Offstage show({
    Key key,
    bool show = true,
  }) {
    return Offstage(
      key: key,
      offstage: !show,
      child: this,
    );
  }

  Padding paddingAll(
    double padding, {
    Key key,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.all(padding ?? normalPadding),
      child: this,
    );
  }

  Padding paddingTop(
    double top, {
    Key key,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.fromLTRB(0, top ?? normalPadding, 0, 0),
      child: this,
    );
  }

  Padding paddingBottom(
    double bottom, {
    Key key,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.fromLTRB(0, 0, 0, bottom ?? normalPadding),
      child: this,
    );
  }

  Padding paddingLeft(
    double left, {
    Key key,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.fromLTRB(left ?? normalPadding, 0, 0, 0),
      child: this,
    );
  }

  Padding paddingRight(
    double right, {
    Key key,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.fromLTRB(0, 0, right ?? normalPadding, 0),
      child: this,
    );
  }

  Center centerWidget({
    Key key,
    double widthFactor,
    double heightFactor,
  }) {
    return Center(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  GestureDetector onTap(GestureTapCallback onTap, {Key key}) {
    return intoGestureDetector(onTap: onTap, key: key);
  }

  GestureDetector onDoubleTap(GestureTapCallback onDoubleTap, {Key key}) {
    return intoGestureDetector(onDoubleTap: onDoubleTap, key: key);
  }

  GestureDetector onLongPress(GestureLongPressCallback onLongPress, {Key key}) {
    return intoGestureDetector(onLongPress: onLongPress, key: key);
  }

  GestureDetector intoGestureDetector({
    Key key,
    GestureTapDownCallback onTapDown,
    GestureTapUpCallback onTapUp,
    GestureTapCallback onTap,
    GestureTapCancelCallback onTapCancel,
    GestureTapDownCallback onSecondaryTapDown,
    GestureTapUpCallback onSecondaryTapUp,
    GestureTapCancelCallback onSecondaryTapCancel,
    GestureTapCallback onDoubleTap,
    GestureLongPressCallback onLongPress,
    GestureLongPressStartCallback onLongPressStart,
    GestureLongPressMoveUpdateCallback onLongPressMoveUpdate,
    GestureLongPressUpCallback onLongPressUp,
    GestureLongPressEndCallback onLongPressEnd,
    GestureDragDownCallback onVerticalDragDown,
    GestureDragStartCallback onVerticalDragStart,
    GestureDragUpdateCallback onVerticalDragUpdate,
    GestureDragEndCallback onVerticalDragEnd,
    GestureDragCancelCallback onVerticalDragCancel,
    GestureDragDownCallback onHorizontalDragDown,
    GestureDragStartCallback onHorizontalDragStart,
    GestureDragUpdateCallback onHorizontalDragUpdate,
    GestureDragEndCallback onHorizontalDragEnd,
    GestureDragCancelCallback onHorizontalDragCancel,
    GestureForcePressStartCallback onForcePressStart,
    GestureForcePressPeakCallback onForcePressPeak,
    GestureForcePressUpdateCallback onForcePressUpdate,
    GestureForcePressEndCallback onForcePressEnd,
    GestureDragDownCallback onPanDown,
    GestureDragStartCallback onPanStart,
    GestureDragUpdateCallback onPanUpdate,
    GestureDragEndCallback onPanEnd,
    GestureDragCancelCallback onPanCancel,
    GestureScaleStartCallback onScaleStart,
    GestureScaleUpdateCallback onScaleUpdate,
    GestureScaleEndCallback onScaleEnd,
    HitTestBehavior behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return GestureDetector(
      key: key,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTap: onTap,
      onTapCancel: onTapCancel,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onLongPressStart: onLongPressStart,
      onLongPressMoveUpdate: onLongPressMoveUpdate,
      onLongPressUp: onLongPressUp,
      onLongPressEnd: onLongPressEnd,
      onVerticalDragDown: onVerticalDragDown,
      onVerticalDragStart: onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd,
      onVerticalDragCancel: onVerticalDragCancel,
      onHorizontalDragDown: onHorizontalDragDown,
      onHorizontalDragStart: onHorizontalDragStart,
      onHorizontalDragUpdate: onHorizontalDragUpdate,
      onHorizontalDragEnd: onHorizontalDragEnd,
      onHorizontalDragCancel: onHorizontalDragCancel,
      onForcePressStart: onForcePressStart,
      onForcePressPeak: onForcePressPeak,
      onForcePressUpdate: onForcePressUpdate,
      onForcePressEnd: onForcePressEnd,
      onPanDown: onPanDown,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      onPanCancel: onPanCancel,
      onScaleStart: onScaleStart,
      onScaleUpdate: onScaleUpdate,
      onScaleEnd: onScaleEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      child: this,
    );
  }
}
