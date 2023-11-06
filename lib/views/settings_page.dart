

import 'package:deli_app/views/rules_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/settings_viewmodel.dart';
import 'settingspage/contact_support_page.dart';
import 'login_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingsViewModel,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 30),
          title: const Text('SETTINGS', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.white,
        body: Consumer<SettingsViewModel>(
          builder: (context, viewModel, child) {
            return ListView(
              children: [
                ListTile(
                  title: const Text('DELI Rules', style: TextStyle(color: Colors.black)),
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const RulesPage()));
                  }
                ),
                ListTile(
                  title: const Text('Contacts'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactPage()));
                  },
                ),
                ListTile(
                  title: const Text('Development'),
                  onTap: () async {
                    const url = 'https://github.com/brief69.';
                    if (await canLaunchUrl(Uri.parse(url))) {
                       await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                ElevatedButton(
                  child: const Text('Logout', style: TextStyle(color: Colors.black)),
                  onPressed: () async {
                    bool success = await viewModel.logoutPage();
                    if (success) {
                      Navigator.pushReplacementNamed(context, const LoginPage() as String);
                    } else {
                      // エラーハンドリングをここに書く
                    }
                  }
                ),
                ElevatedButton(
                  child: const Text('Delete Accaunt', style: TextStyle(color: Colors.black)),
                  onPressed: () => viewModel.deleteAccount(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
