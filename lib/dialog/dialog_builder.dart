import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'dialog_wrapper.dart';

Route<T> dialogRouteBuilder<T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
  if (page.child is! DialogWrapperRoute) {
    throw ArgumentError('Child page must be of type DialogWrapperRoute to use dialogSheetBuilder.');
  }

  final dialogWrapperRoute = page.child as DialogWrapperRoute;
  final config = dialogWrapperRoute.dialogConfig;

  return DialogRoute<T>(
    settings: page,
    context: context,
    builder: (_) => child,
    themes: config.themes,
    barrierColor: config.barrierColor,
    barrierDismissible: config.barrierDismissible,
    barrierLabel: config.barrierLabel,
    useSafeArea: config.useSafeArea,
    anchorPoint: config.anchorPoint,
    traversalEdgeBehavior: config.traversalEdgeBehavior,
  );
}
