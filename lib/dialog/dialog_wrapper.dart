import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'dialog_config.dart';

@RoutePage()
class DialogWrapperRoute extends StatelessWidget {
  const DialogWrapperRoute({
    required this.builder,
    this.dialogConfig = const DialogConfig(),
    super.key,
  });

  final Widget Function(BuildContext context) builder;
  final DialogConfig dialogConfig;

  @override
  Widget build(BuildContext context) {
    return builder(context);
  }
}
