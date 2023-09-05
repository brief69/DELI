

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../errorHandling/error_handler.dart';

// TODO:エラーハンドリングのコードはエラーハンドリングのフォルダにまとめる

final logger = Logger();

class LogoutViewModel extends ChangeNotifier {

  Future<void> logOut() async {
    try {
  // TODO #34:ログアウト処理を書く
  // TODO:lib/error_handlingに投げる処理を書く
} catch (e) {
  ErrorHandler.handleException(e);
}
    }
  }
