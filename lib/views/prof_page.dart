// /Users/ir/Desktop/deli_app/deli_app/lib/views/prof_page.dart

import 'package:flutter/material.dart';
import 'package:deli_app/views/h_send_tab.dart';
import 'package:deli_app/views/h_rece_tab.dart';
import 'package:deli_app/views/h_gene_tab.dart';
import 'package:deli_app/views/w_bran_tab.dart';
import 'package:deli_app/views/w_gene_tab.dart';
import 'package:deli_app/views/w_hist_tab.dart';

class ProfPage extends StatefulWidget {
  const ProfPage({Key? key}) : super(key: key); // Fixed the key initialization

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
        title: const Text('User Public Key Here'),
        actions: [
          GestureDetector(
            onTap: () {
              // TODO: Implement profile image upload/change logic
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage('path_to_profile_image'),
            ),
          ),
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

class WalletTabView extends StatefulWidget {
  const WalletTabView({Key? key}) : super(key: key);

  @override
  WalletTabViewState createState() => WalletTabViewState();
}

class WalletTabViewState extends State<WalletTabView> with SingleTickerProviderStateMixin {
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
            Tab(text: 'BRAN'),
            Tab(text: 'GENE'),
            Tab(text: 'HIST'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              BranTab(),   // Assuming BranTab is the main widget in w_bran_tab.dart
              GeneTab(),   // Assuming GeneTab is the main widget in w_gene_tab.dart
              HistTab(),   // Assuming HistTab is the main widget in w_hist_tab.dart
            ],
          ),
        )
      ],
    );
  }
}
