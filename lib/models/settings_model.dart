



class SettingsModel {
  bool notificationsEnabled;
  bool privacyEnabled;
  bool securityEnabled;
  bool accountOpen = false;  // _（アンダースコア）で始まる名前はプライベートです

  SettingsModel({
    this.notificationsEnabled = false,
    this.privacyEnabled = false,
    this.securityEnabled = false,
    bool accountOpen = false, // プロパティにデフォルト値を与える
  }) {
    accountOpen = accountOpen;  // コンストラクタで値を設定
  }

  set age(int age) {}

  set name(String name) {}

  set accountClose(bool accountClose) {}
}

