import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakeibo/viewmodel/user_register_view_model.dart';

class UserRegisterScreen extends ConsumerWidget {
  const UserRegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(userRegisterViewModelProvider);
    final viewModel = ref.read(userRegisterViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: viewModel.updateEmail,
              decoration: const InputDecoration(labelText: 'メールアドレス'),
            ),
            TextField(
              onChanged: viewModel.updatePassword,
              decoration: const InputDecoration(labelText: 'パスワード'),
              obscureText: true,
            ),
            TextField(
              onChanged: viewModel.updateBirthday,
              decoration: const InputDecoration(labelText: '生年月日'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: viewModel.register,
              child: const Text('登録'),
            ),
          ],
        ),
      ),
    );
  }
}