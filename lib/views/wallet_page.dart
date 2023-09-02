

// views/wallet_page.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/wallet_viewmodel.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  WalletPageState createState() => WalletPageState();
}

class WalletPageState extends State<WalletPage> {
  late WalletViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = Provider.of<WalletViewModel>(context, listen: false);
    viewModel.getWalletAddress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wallet Page")),
      body: Consumer<WalletViewModel>(
        builder: (context, viewModel, child) {
          return Center(
            child: viewModel.walletAddress == null
              ? const CircularProgressIndicator()
              : Text("Your Wallet Address: ${viewModel.walletAddress}"),
          );
        },
      ),
    );
  }
}
