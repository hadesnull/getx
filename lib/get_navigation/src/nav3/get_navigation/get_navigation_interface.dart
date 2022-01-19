import 'package:flutter/widgets.dart';

import '../../../../get_state_manager/src/simple/get_state.dart';
import '../../routes/get_route.dart';
import '../../routes/transitions_type.dart';

mixin IGetNavigation {
  Future<T?> to<T>(
    Widget Function() page, {
    bool? opaque,
    Transition? transition,
    Curve? curve,
    Duration? duration,
    int? id,
    String? routeName,
    bool fullscreenDialog = false,
    dynamic arguments,
    Binding? binding,
    bool preventDuplicates = true,
    bool? popGesture,
    bool showCupertinoParallax = true,
    double Function(BuildContext context)? gestureWidth,
  });

  Future<T?> off<T>(
    Widget Function() page, {
    bool? opaque,
    Transition? transition,
    Curve? curve,
    Duration? duration,
    int? id,
    String? routeName,
    bool fullscreenDialog = false,
    dynamic arguments,
    Binding? binding,
    bool preventDuplicates = true,
    bool? popGesture,
    bool showCupertinoParallax = true,
    double Function(BuildContext context)? gestureWidth,
  });

  Future<T?>? offAll<T>(
    Widget Function() page, {
    bool Function(GetPage route)? predicate,
    bool opaque = true,
    bool? popGesture,
    int? id,
    String? routeName,
    dynamic arguments,
    Binding? binding,
    bool fullscreenDialog = false,
    Transition? transition,
    Curve? curve,
    Duration? duration,
    bool showCupertinoParallax = true,
    double Function(BuildContext context)? gestureWidth,
  });

  Future<T?> toNamed<T>(String page, [Object? data]);

  Future<T?> offNamed<T>(String page, [Object? data]);

  Future<T?>? offAllNamed<T>(
    String newRouteName, {
    bool Function(GetPage route)? predicate,
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  });

  Future<T?> toAndOffUntil<T>(
    String page,
    bool Function(GetPage) predicate, [
    Object? data,
  ]);

  void back<T>([T? result]);

  Future<R?> backAndtoNamed<T, R>(String page, {T? result, Object? data});

  void backUntil(bool Function(GetPage) predicate);

  void goToUnknownPage([bool clearPages = true]);

  bool get canBack;
}