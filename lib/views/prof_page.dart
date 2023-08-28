// /Users/ir/Desktop/deli_app/deli_app/lib/views/prof_page.dart

import 'package:flutter/material.dart';
import 'package:deli_app/views/historyTabPages/h_send_tab.dart';
import 'package:deli_app/views/historyTabPages/h_gene_tab.dart';
import 'package:deli_app/views/historyTabPages/h_rece_tab.dart';
import 'package:deli_app/views/walletTabPages/w_bran_tab.dart';
import 'package:deli_app/views/walletTabPages/w_gene_tab.dart';
import 'package:deli_app/views/walletTabPages/w_hist_tab.dart';

// TODO: ユーザー名と公開キーの表示を実装
// TODO: 

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
        actions: [
        bottom TabBar(
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


// TODO: 以下のコードを移動、整理
class HistoryTabView extends StatefulWidget {
  const HistoryTabView({Key? key}) : super(key: key);

  @override
  HistoryTabViewState createState() => HistoryTabViewState();
}

class HistoryTabViewState extends State<HistoryTabView> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _controller,
          tabs: const [
            Tab(text: 'SEND'),
            Tab(text: 'RECE'),
            Tab(text: 'GENE'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              SendTab(),   // Assuming SendTab is the main widget in h_send_tab.dart
              ReceTab(),   // Assuming ReceTab is the main widget in h_rece_tab.dart
              GeneTab(),   // Assuming GeneTab is the main widget in h_gene_tab.dart
            ],
          ),
        )
      ],
    );
  }
}
