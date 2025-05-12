import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const KakeiboApp());
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => HomeScreen(),
    ),
    GoRoute(
      path: '/second',
      builder: (BuildContext context, GoRouterState state) => SecondScreen(),
    ),
    GoRoute(
      path: '/third',
      builder: (BuildContext context, GoRouterState state) => ThirdScreen(),
    ),
    GoRoute(
      path: '/fourth',
      builder: (BuildContext context, GoRouterState state) => FourthScreen(),
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
            Text('生年月日'),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: '2000年12月31日',
                hintStyle: TextStyle(color: Colors.grey.shade400),
              ),
              maxLines: 1,
              maxLength: 14,
              buildCounter: (_,
                      {required currentLength,
                      required isFocused,
                      required maxLength}) =>
                  null,
            ),
            Checkbox(value: false, onChanged: (value) {}),
            Text('利用規約に同意します'),
            ElevatedButton(
              onPressed: () {
                goRouter.push('/fourth');
              },
              child: Text('登録'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

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
