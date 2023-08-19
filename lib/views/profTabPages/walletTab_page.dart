// 

import 'package:flutter/material.dart';

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
