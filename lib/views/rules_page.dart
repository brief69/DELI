

// /Users/ir/Desktop/pubOp_app/pub_op/lib/views/settingsPages/rules_page.dart

import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DELI Rules', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 0, 0, 30),
          bottom: const TabBar(
            tabs: [
            Tab(text: 'DELI Rules'),
              Tab(text: 'DELI Management Rules'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UserRulesTab(),
            ManagementRulesTab(),
          ],
        ),
      ),
    );
  }
}
// TODO:ルールを書く
class UserRulesTab extends StatelessWidget {
  const UserRulesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('DELI は、分散型受配送システムです。'),
        ),
        ListTile(
          title: Text(''),
        ),
        ListTile(
          title: Text(''),
        ),
        ListTile(
          title: Text(''),
        ),
        ListTile(
          title: Text(''),
        ),
        ListTile(
          title: Text(''),
        ),
        ListTile(
          title: Text(''),
        ),
        ListTile(
          title: Text('ユーザールール8'),
        ),
        ListTile(
          title: Text('ユーザールール9'),
        ),
      ],
    );
  }
}

class ManagementRulesTab extends StatelessWidget {
  const ManagementRulesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('運営ルール1'),
        ),
        ListTile(
          title: Text('運営ルール2'),
        ),
        ListTile(
          title: Text('運営ルール3'),
        ),
        ListTile(
          title: Text('運営ルール4'),
        ),
        ListTile(
          title: Text('運営ルール5'),
        ),
        ListTile(
          title: Text('運営ルール6'),
        ),
        ListTile(
          title: Text('運営ルール7'),
        ),
        ListTile(
          title: Text('運営ルール8'),
        ),
        ListTile(
          title: Text('運営ルール9'),
        ),
      ],
    );
  }
}

