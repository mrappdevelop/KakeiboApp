import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kakeibo/view/user_register_screen.dart';
import 'package:kakeibo/view/start_screen.dart';
import 'package:kakeibo/view/login_screen.dart';
import 'package:kakeibo/view/detail_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: KakeiboApp()
    ),
  );
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => StartScreen(),
    ),
    GoRoute(
      path: '/userregister',
      builder: (BuildContext context, GoRouterState state) => UserRegisterScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) => LoginScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (BuildContext context, GoRouterState state) => DetailScreen(),
    ),
  ],
);

class KakeiboApp extends StatelessWidget {
  const KakeiboApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Kakeibo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}
