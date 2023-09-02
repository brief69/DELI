

// /Users/ir/Desktop/deli_app/deli_app/lib/views/walletTabPages/w_gene_tab.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deli_app/viewmodels/w_gene_view_model.dart';

class GeneTab extends StatelessWidget {
  const GeneTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WGeneViewModel(),
      child: Consumer<WGeneViewModel>(
        builder: (_, viewModel, __) {
          return ListView.builder(
            itemCount: viewModel.tokenHistories.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text('トークン: ${viewModel.tokenHistories[index]}'),
              );
            },
          );
        },
      ),
    );
  }
}
