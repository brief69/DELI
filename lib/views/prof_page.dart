// /Users/ir/Desktop/deli_app/deli_app/lib/views/prof_page.dart
import 'package:flutter/material.dart';
import 'package:deli_app/views/walletTab_page.dart';
import 'package:deli_app/views/historyTab_page.dart';

class ProfPage extends StatefulWidget {
  const ProfPage({Key? key}) : super(key: key);

  @override
  ProfPageState createState() => ProfPageState();
}

class ProfPageState extends State<ProfPage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 30),
        title: null,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/publicKeyQRPage');
          },
          child: const Center(
            child: Text(
              'Public Key',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        centerTitle: true,
        title: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/editProfilePage');
          },
          child: const Text(
            'Username',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/settingsPage');
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: const [
            Tab(text: 'HISTORY'),
            Tab(text: 'WALLET'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          HistoryTabView(),
          WalletTabView(),
        ],
      ),
    );
  }
}
