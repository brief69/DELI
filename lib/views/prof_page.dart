import 'package:flutter/material.dart';
import 'package:deli_app/views/h_send_tab.dart';
import 'package:deli_app/views/h_rece_tab.dart';
import 'package:deli_app/views/h_gene_tab.dart';
import 'package:deli_app/views/w_bran_tab.dart';
import 'package:deli_app/views/w_gene_tab.dart';
import 'package:deli_app/views/w_hist_tab.dart';

class ProfPage extends StatefulWidget {
  const ProfPage({super.key});

  @override
  ProfPageState createState() => ProfPageState();
}

class ProfPageState extends State<ProfPage> with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Public Key Here'), // ユーザーの公開キーを表示する
        actions: [
          GestureDetector(
            onTap: () {
              // ここにプロフィール画像のアップロードや変更のロジックを書く
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage('path_to_profile_image'), // プロフィール画像のパスを指定する
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

class HistoryTabView extends StatelessWidget {
  const HistoryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return; // Historyタブの詳細な実装、たとえば子タブの実装など
  }
}

class WalletTabView extends StatelessWidget {
  const WalletTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return // Walletタブの詳細な実装、たとえば子タブの実装など
  }
}
