// Copyright 2024 Fikret Şengül. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'modal_config.dart';

@RoutePage()
class ModalWrapperRoute extends StatelessWidget {
  const ModalWrapperRoute({
    required this.builder,
    this.modalConfig = const ModalConfig(),
    super.key,
  });

  final Widget Function(BuildContext context) builder;
  final ModalConfig modalConfig;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      right: false,
      left: false,
      child: builder(context),
    );
  }
}
