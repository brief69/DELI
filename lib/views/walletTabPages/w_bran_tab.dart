

// /Users/ir/Desktop/deli_app/deli_app/lib/views/walletTabPages/w_bran_tab.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deli_app/viewmodels/w_bran_view_model.dart';

class BranTab extends StatelessWidget {
  const BranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WBranViewModel(),
      child: Consumer<WBranViewModel>(
        builder: (_, viewModel, __) {
          return Center(
            child: Text('残高: ${viewModel.balance}'),
          );
        },
      ),
    );
  }
}
