import 'package:cloudnet_v3_flutter/feature/node/node_handler.dart';
import 'package:cloudnet_v3_flutter/feature/node/node_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
    routes: [
      GoRoute(
        path: NodePage.route,
        name: NodePage.name,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const NodePage(),
        ),
      )
    ],
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: Text(state.error.toString()),
    ),
    redirect: (GoRouterState state) {
      final bool loggedIn = nodeHandler.hasBaseUrl();
      final bool goingToLogin = state.location == NodePage.route;

      // the user is not set a node url headed to /login, they need to set it
      if (!loggedIn && !goingToLogin) return NodePage.route;

      // the user is logged in and headed to /login, no need to login again
      // if (loggedIn && goingToLogin) return CameraPage.route;

      // no need to redirect at all
      return null;
    },
);
