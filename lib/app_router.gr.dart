// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route_popscope/auto_route_main.dart' as _i3;
import 'package:auto_route_popscope/dialog/dialog_config.dart' as _i2;
import 'package:auto_route_popscope/dialog/dialog_wrapper.dart' as _i1;
import 'package:auto_route_popscope/modal/modal_config.dart' as _i5;
import 'package:auto_route_popscope/modal/modal_wrapper.dart' as _i4;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DialogWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<DialogWrapperRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DialogWrapperRoute(
          builder: args.builder,
          dialogConfig: args.dialogConfig,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    ModalWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<ModalWrapperRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ModalWrapperRoute(
          builder: args.builder,
          modalConfig: args.modalConfig,
          key: args.key,
        ),
      );
    },
    SecondRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SecondPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DialogWrapperRoute]
class DialogWrapperRoute extends _i6.PageRouteInfo<DialogWrapperRouteArgs> {
  DialogWrapperRoute({
    required _i7.Widget Function(_i7.BuildContext) builder,
    _i2.DialogConfig dialogConfig = const _i2.DialogConfig(),
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DialogWrapperRoute.name,
          args: DialogWrapperRouteArgs(
            builder: builder,
            dialogConfig: dialogConfig,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DialogWrapperRoute';

  static const _i6.PageInfo<DialogWrapperRouteArgs> page =
      _i6.PageInfo<DialogWrapperRouteArgs>(name);
}

class DialogWrapperRouteArgs {
  const DialogWrapperRouteArgs({
    required this.builder,
    this.dialogConfig = const _i2.DialogConfig(),
    this.key,
  });

  final _i7.Widget Function(_i7.BuildContext) builder;

  final _i2.DialogConfig dialogConfig;

  final _i7.Key? key;

  @override
  String toString() {
    return 'DialogWrapperRouteArgs{builder: $builder, dialogConfig: $dialogConfig, key: $key}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ModalWrapperRoute]
class ModalWrapperRoute extends _i6.PageRouteInfo<ModalWrapperRouteArgs> {
  ModalWrapperRoute({
    required _i7.Widget Function(_i7.BuildContext) builder,
    _i5.ModalConfig modalConfig = const _i5.ModalConfig(),
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ModalWrapperRoute.name,
          args: ModalWrapperRouteArgs(
            builder: builder,
            modalConfig: modalConfig,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ModalWrapperRoute';

  static const _i6.PageInfo<ModalWrapperRouteArgs> page =
      _i6.PageInfo<ModalWrapperRouteArgs>(name);
}

class ModalWrapperRouteArgs {
  const ModalWrapperRouteArgs({
    required this.builder,
    this.modalConfig = const _i5.ModalConfig(),
    this.key,
  });

  final _i7.Widget Function(_i7.BuildContext) builder;

  final _i5.ModalConfig modalConfig;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ModalWrapperRouteArgs{builder: $builder, modalConfig: $modalConfig, key: $key}';
  }
}

/// generated route for
/// [_i3.SecondPage]
class SecondRoute extends _i6.PageRouteInfo<void> {
  const SecondRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
