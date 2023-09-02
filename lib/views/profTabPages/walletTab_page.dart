// /Users/ir/Desktop/deli_app/deli_app/lib/views/profTabPages/walletTab_page.dart

import 'package:flutter/material.dart';
import 'package:deli_app/views/walletTabPages/w_bran_tab.dart';
import 'package:deli_app/views/walletTabPages/w_gene_tab.dart';
import 'package:deli_app/views/walletTabPages/w_hist_tab.dart';


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
            children: const [
              BranTab(),
              GeneTab(),
              HistTab(),
            ],
          ),
        )
      ],
    );
  }
}

