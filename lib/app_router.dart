import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'dialog/dialog_builder.dart';
import 'modal/modal_builder.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, path: '/home'),
        AutoRoute(page: SecondRoute.page, path: '/second'),
        CustomRoute(
          page: ModalWrapperRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          customRouteBuilder: modalRouteBuilder,
          path: '/modal',
        ),
        CustomRoute(
          page: DialogWrapperRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          customRouteBuilder: dialogRouteBuilder,
          path: '/dialog',
        ),
      ];
}
