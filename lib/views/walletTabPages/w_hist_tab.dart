

// /Users/ir/Desktop/deli_app/deli_app/lib/views/walletTabPages/w_hist_tab.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deli_app/viewmodels/w_hist_view_model.dart';

class HistTab extends StatelessWidget {
  const HistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WHistViewModel(),
      child: Consumer<WHistViewModel>(
        builder: (_, viewModel, __) {
          return ListView.builder(
            itemCount: viewModel.transactionHistories.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text('取引: ${viewModel.transactionHistories[index]}'),
              );
            },
          );
        },
      ),
    );
  }
}
