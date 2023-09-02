

import 'package:flutter/material.dart';
import 'package:deli_app/views/editProfilePage.dart';
import 'package:deli_app/views/settings_page.dart';
import 'package:deli_app/views/publicKeyQRPage.dart';

final Map<String, WidgetBuilder> routes = {
  '/editProfilePage': (BuildContext context) => const EditProfilePage(),
  '/settingsPage': (BuildContext context) => const SettingsPage(),
  '/publicKeyQRPage': (BuildContext context) => PublicKeyQRPage(),
};
