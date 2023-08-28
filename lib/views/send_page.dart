// /Users/ir/Desktop/deli_app/deli_app/lib/views/send_page.dart


import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../viewmodels/send_viewmodel.dart';

class SendPage extends StatefulWidget {
  const SendPage({super.key});

  @override
  SendPageState createState() => SendPageState();
}

class SendPageState extends State<SendPage> {
  late SendPageViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = SendPageViewModel();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO: Implement your QR scanner here
        const Expanded(
          child: Center(child: Icon(Icons.arrow_upward)),
        ),
        QrImage(
          data: "PUBLIC_KEY",
          version: QrVersions.auto,
          size: 200.0,
        ),
        const TabBar(
          tabs: [
            Tab(text: '現在地'),
            Tab(text: '別の場所'),
          ],
        ),
        StreamBuilder<String>(
          stream: viewModel.locationWordsController.stream,
          initialData: "loading...",
          builder: (context, snapshot) {
            return Text(snapshot.data ?? "loading...");
          },
        ),
      ],
    );
  }
}