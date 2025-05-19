import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakeibo/viewmodel/login_view_model.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(loginViewModelProvider);
    final viewModel = ref.read(loginViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
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
                labelText: 'メールアドレス',
              ),
              maxLines: 1,
              maxLength: 100,
              buildCounter: (_,
                      {required currentLength,
                      required isFocused,
                      required maxLength}) =>
                  null,
              onChanged: viewModel.updateEmail,
            ),
            Text('パスワード'),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'abcd1234',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                labelText: 'パスワード',
              ),
              maxLines: 1,
              maxLength: 30,
              buildCounter: (_,
                      {required currentLength,
                      required isFocused,
                      required maxLength}) =>
                  null,
              onChanged: viewModel.updatePassword,
            ),
            ElevatedButton(
              onPressed: viewModel.login,
              child: Text('ログイン'),
            ),
          ],
        ),
      ),
    );
  }
}