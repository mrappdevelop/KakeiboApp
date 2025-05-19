import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kakeibo/model/detail_model.dart';
import 'package:kakeibo/main.dart';

part 'detail_view_model.g.dart';

@riverpod
class DetailViewModel extends _$DetailViewModel {
  @override
  DetailModel build() {
    return DetailModel(text: '');
  }

  void updateText(String value) {
    state = DetailModel(
      text: value,
    );
  }

  void event() {
    print('入出金明細イベント');

    print('入出金明細: ${state.text}');

    // goRouter.push('/detail');
  }
}