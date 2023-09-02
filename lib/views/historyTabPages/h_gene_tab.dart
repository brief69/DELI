// /Users/ir/Desktop/deli_app/deli_app/lib/views/historyTabPages/h_send_tab.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deli_app/viewmodels/h_send_viewmodel.dart';

class GeneTab extends StatelessWidget {
  const GeneTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HSendViewModel(),
      child: Consumer<HSendViewModel>(
        builder: (_, viewModel, __) {
          return ListView.builder(
            itemCount: viewModel.sendHistories.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text('生成: ${viewModel.sendHistories[index].message}'),
                subtitle: Text('数: ${viewModel.sendHistories[index].amount}'),
              );
            },
          );
        },
      ),
    );
  }
}
