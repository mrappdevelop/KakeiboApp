import 'package:flutter/material.dart';
import 'package:kakeibo/main.dart';

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
                  goRouter.push('/userregister');
                },
                child: Text('ユーザー登録'),
              ),
              ElevatedButton(
                onPressed: () {
                  goRouter.push('/login');
                },
                child: Text('ログイン'),
              ),
            ],
          ),
        ));
  }
}