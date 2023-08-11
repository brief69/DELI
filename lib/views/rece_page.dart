

import 'package:flutter/material.dart';
import 'package:deli_app/viewmodels/rece_viewmodel.dart';

class RecePage extends StatelessWidget {
  final ReceViewModel viewModel = ReceViewModel();

  RecePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/path_to_received_qr.png'), // 相手の公開キーから生成されたQR
            const Icon(Icons.arrow_downward),
            Image.asset('assets/path_to_own_qr.png'),     // 自分の公開キーから生成されるQR
          ],
        ),
      ),
    );
  }
}
