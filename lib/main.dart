import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kakeibo/view/user_register_screen.dart';

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
      path: '/second',
      builder: (BuildContext context, GoRouterState state) => UserRegisterScreen(),
    ),
    GoRoute(
      path: '/third',
      builder: (BuildContext context, GoRouterState state) => LoginScreen(),
    ),
    GoRoute(
      path: '/fourth',
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

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kakeibo App'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  goRouter.push('/second');
                },
                child: Text('ユーザー登録'),
              ),
              ElevatedButton(
                onPressed: () {
                  goRouter.push('/third');
                },
                child: Text('ログイン'),
              ),
            ],
          ),
        ));
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kakeibo App'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('メールアドレス'),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'aaa@bbb.com',
                hintStyle: TextStyle(color: Colors.grey.shade400),
              ),
              maxLines: 1,
              maxLength: 100,
              buildCounter: (_,
                      {required currentLength,
                      required isFocused,
                      required maxLength}) =>
                  null,
            ),
            Text('パスワード'),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'abcd1234',
                hintStyle: TextStyle(color: Colors.grey.shade400),
              ),
              maxLines: 1,
              maxLength: 30,
              buildCounter: (_,
                      {required currentLength,
                      required isFocused,
                      required maxLength}) =>
                  null,
            ),
            ElevatedButton(
              onPressed: () {
                goRouter.push('/fourth');
              },
              child: Text('ログイン'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kakeibo App'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: const Text('入出金明細'),
      ),
    );
  }
}
