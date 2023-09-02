

import 'package:flutter/foundation.dart';
import 'package:deli_app/models/settings_model.dart';

class SettingsViewModel extends ChangeNotifier {
  final SettingsModel _settings = SettingsModel();

  SettingsModel get settings => _settings;

  Future<void> handleFeedback(String feedback) async {
    // ここで何らかのフィードバック処理を行う
    // 例: データベースに保存、APIを呼び出す等
    ("Received feedback: $feedback");
  }

  // フィードバックをViewModelに投げるメソッド
  Future<void> submitFeedback(String feedback) async {
    // ここでフィードバックをfinalな処理に投げる
    // 例: API経由でサーバーに送信
    await handleFeedback(feedback);
    ("Feedback submitted.");
  }

  // Twitterで問い合わせるメソッド
  void contactViaTwitter() {
    // ここでTwitterの問い合わせページに遷移する処理等
    ("Contacting via Twitter...");
  }
  void editName(String newName) {
    _settings.name = newName;
    notifyListeners();
  }

  void toggleNotificationSettings(bool value) {
    _settings.notificationsEnabled = value;
    notifyListeners();
  }

  void toggleAccountOpen(bool value) {
    _settings.accountOpen = value;
    notifyListeners();
  }

  void toggleAccountClose(bool value) {
    _settings.accountClose = value;
    notifyListeners();
  }

  void logout() {
    // TODO: Implement logout functionality
  }

  void deleteAccount() {
    // TODO: #33 Implement account deletion functionality
  }
}
