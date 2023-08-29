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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // TODO: #7 implement settings action
            },
          )
        ],
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            // TODO: #6 Implement your QR scanner here
            const Expanded(
              child: Center(child: Icon(Icons.arrow_upward, color: Colors.white)),
            ),
            QrImage(
              data: "PUBLIC_KEY",
              version: QrVersions.auto,
              size: 200.0,
              foregroundColor: Colors.white,
            ),
            const TabBar(
              tabs: [
                Tab(text: '現在地', icon: Icon(Icons.location_on, color: Colors.white)),
                Tab(text: '別の場所', icon: Icon(Icons.place, color: Colors.white)),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white,
            ),
            StreamBuilder<String>(
              stream: viewModel.locationWordsController.stream,
              initialData: "loading...",
              builder: (context, snapshot) {
                return Text(
                  snapshot.data ?? "loading...",
                  style: const TextStyle(color: Colors.white),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
