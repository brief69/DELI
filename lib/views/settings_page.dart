

import 'package:deli_app/views/rules_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pub_op/views/login_page.dart';
import 'package:pub_op/views/edit_address_page.dart';
import 'package:pub_op/views/edit_affiliation_page.dart';
import 'package:pub_op/views/edit_email_page.dart';
import 'package:pub_op/views/rules_page.dart';
import 'package:pub_op/views/sms_verification_page.dart';
import '../viewmodels/contact_viewmodel.dart';
import '../viewmodels/settings_viewmodel.dart';

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
                  onTap: () => const RulesPage(),
                ),
                ListTile(
                  title: const Text('Email', style: TextStyle(color: Colors.black)),
                  onTap: () => const EditEmailPage(),
                ),
                ListTile(
                  title: const Text('Bank Accaunt', style: TextStyle(color: Colors.black)),
                  onTap: () => {},
                ),
                SwitchListTile(
                  title: const Text('Account Closed'),
                  value: viewModel.settings.accountOpen,
                  onChanged: (value) {
                    viewModel.toggleAccountOpen(value);
                  },
                  inactiveTrackColor: const Color.fromARGB(108, 84, 74, 70), // off状態がopenなので灰色を示す
                  activeColor: const Color.fromARGB(255, 0, 255, 8), // on状態がclosedなので緑色を示す
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
                  child: const Text('Log Out', style: TextStyle(color: Colors.black)),
                  onPressed: () async {
                    bool success = await viewModel.logoutPage();
                    if (success) {
                      Navigator.pushReplacementNamed(context, LoginPage()),
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
