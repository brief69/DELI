

import 'package:flutter/material.dart';
import 'package:deli_app/views/editProfilePage.dart';
import 'package:deli_app/views/settingsPage.dart';
import 'package:deli_app/views/publicKeyQRPage.dart';

final Map<String, WidgetBuilder> routes = {
  '/editProfilePage': (BuildContext context) => EditProfilePage(),
  '/settingsPage': (BuildContext context) => SettingsPage(),
  '/publicKeyQRPage': (BuildContext context) => PublicKeyQRPage(),
};
