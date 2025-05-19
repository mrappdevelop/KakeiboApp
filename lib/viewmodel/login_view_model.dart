import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kakeibo/model/login_model.dart';
import 'package:kakeibo/main.dart';

part 'login_view_model.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginModel build() {
    return LoginModel(email: '', password: '');
  }

  void updateEmail(String value) {
    state = LoginModel(
      email: value,
      password: state.password,
    );
  }

  void updatePassword(String value) {
    state = LoginModel(
      email: state.email,
      password: value,
    );
  }

  void login() {
    if (state.email.isEmpty || state.password.isEmpty) {
      print('すべてのフィールドを入力してください');
      return;
    }

    print('ログイン: ${state.email}, ${state.password}');

    goRouter.push('/detail');
  }
}