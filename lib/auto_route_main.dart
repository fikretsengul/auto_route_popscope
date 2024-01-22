import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';
import 'app_router.gr.dart';

void main() => runApp(NavigatorPopHandlerApp());

void modalBottomSheet(BuildContext context) {
  AutoRouter.of(context).push(
    ModalWrapperRoute(
      builder: (context) {
        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            print('Attempted to pop modal.');

            if (didPop) {
              return;
            }

            backDialog(context);
          },
          child: Container(
            height: 200,
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('Modal BottomSheet'),
                  ElevatedButton(
                    child: const Text('Close BottomSheet'),
                    onPressed: () => backDialog(context),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}

void backDialog(BuildContext context) {
  AutoRouter.of(context).push<void>(
    DialogWrapperRoute(
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Are you sure you want to leave this page?',
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Nevermind'),
              onPressed: () {
                AutoRouter.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Leave'),
              onPressed: () {
                AutoRouter.of(context).popForced();
                AutoRouter.of(context).popForced();
              },
            ),
          ],
        );
      },
    ),
  );
}

class NavigatorPopHandlerApp extends StatelessWidget {
  NavigatorPopHandlerApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page One'),
            TextButton(
              onPressed: () {
                AutoRouter.of(context).push(const SecondRoute());
              },
              child: const Text('Page PopScope'),
            ),
            TextButton(
              onPressed: () => modalBottomSheet(context),
              child: const Text('Modal PopScope'),
            ),
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Second Page'),
            PopScope(
              canPop: false,
              onPopInvoked: (didPop) {
                print('Attempted to pop page.');

                if (didPop) {
                  return;
                }

                backDialog(context);
              },
              child: TextButton(
                onPressed: () => backDialog(context),
                child: const Text('Go back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
