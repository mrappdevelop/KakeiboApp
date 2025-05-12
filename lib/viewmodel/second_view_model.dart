import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kakeibo/model/second_model.dart';
import 'package:kakeibo/main.dart';

part 'second_view_model.g.dart';

@riverpod
class SecondViewModel extends _$SecondViewModel {
  @override
  SecondModel build() {
    return SecondModel(email: '', password: '', birthday: '');
  }

  void updateEmail(String value) {
    state = SecondModel(
      email: value,
      password: state.password,
      birthday: state.birthday,
    );
  }

  void updatePassword(String value) {
    state = SecondModel(
      email: state.email,
      password: value,
      birthday: state.birthday,
    );
  }

  void updateBirthday(String value) {
    state = SecondModel(
      email: state.email,
      password: state.password,
      birthday: value,
    );
  }

  void register() {
    if (state.email.isEmpty || state.password.isEmpty || state.birthday.isEmpty) {
      print('すべてのフィールドを入力してください');
      return;
    }

    print('ユーザー登録: ${state.email}, ${state.password}, ${state.birthday}');

    goRouter.push('/fourth');
  }
}