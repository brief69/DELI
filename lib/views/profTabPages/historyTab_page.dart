
// /Users/ir/Desktop/deli_app/deli_app/lib/views/profTabPages/historyTab_page.dart

import 'package:flutter/material.dart';
import 'package:deli_app/views/historyTabPages/h_send_tab.dart';
import 'package:deli_app/views/historyTabPages/h_rece_tab.dart';
import 'package:deli_app/views/historyTabPages/h_gene_tab.dart';


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
              SendTab(),   // TODO: h_send_tab.dartのコードを書く、listviewで送信履歴を表示するページ
              ReceTab(),   // TODO: h_rece_tab.dartのコードを書く、listviewで受け取り履歴を表示するページ
              GeneTab(),   // TODO: h_gene_tab.dartのコードを書く、listviewで生成履歴を表示するページ
            ],
          ),
        )
      ],
    );
  }
}