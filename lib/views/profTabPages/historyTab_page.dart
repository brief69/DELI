
// /Users/ir/Desktop/deli_app/deli_app/lib/views/profTabPages/historyTab_page.dart

import 'package:flutter/material.dart';

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

class GeneTab { // TODO #3:listviewのページのコードを書く。正確には他のファイルに書く
}

class ReceTab { // TODO: #2 listviewのページのコードを書く。正確には他のファイルに書く
}

class SendTab { // TODO: #4 listviewのページのコードを書く。正確には他のファイルに書く
}
