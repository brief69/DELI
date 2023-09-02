// /Users/ir/Desktop/deli_app/deli_app/lib/views/prof_page.dart

import 'package:flutter/material.dart';
import 'package:deli_app/views/profTabPages/walletTab_page.dart';
import 'package:deli_app/views/profTabPages/historyTab_page.dart';



// TODO: ユーザー名と公開キーの表示を実装

class ProfPage extends StatefulWidget {
  const ProfPage({Key? key}) : super(key: key); // Fixed the key initialization

  @override
  ProfPageState createState() => ProfPageState();
}

class ProfPageState extends State<ProfPage> with SingleTickerProviderStateMixin {
  late TabController _controller;
  
  get bottom => null;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Public Key Here'),
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