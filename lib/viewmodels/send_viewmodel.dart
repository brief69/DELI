// /Users/ir/Desktop/deli_app/deli_app/lib/viewmodels/send_viewmodel.dart

import 'dart:async';
class SendPageViewModel {
  StreamController<String> locationWordsController = StreamController<String>();

  SendPageViewModel() {
    // TODO: 現在は例だが、ある場所の単語を取得する呼び出し
    // TODO:APIコールで単語を呼び出す
    Future.delayed(const Duration(seconds: 1), () {
      locationWordsController.add("New Location Words");
    });
  }

  void dispose() {
    locationWordsController.close();
  }
}