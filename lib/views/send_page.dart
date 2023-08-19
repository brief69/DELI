// /Users/ir/Desktop/deli_app/deli_app/lib/views/send_page.dart


import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../services/api_service.dart';

// TODO:UIの微調整

class SendPage extends StatefulWidget {
  const SendPage({super.key});

  @override
  SendPageState createState() => SendPageState();
}

class SendPageState extends State<SendPage> {
  String locationWords = 'loading...';

  @override
  void initState() {
    super.initState();
    // TODO:現在は例だが、ある場所の単語を取得する呼び出し
    ApiService().getWordsFromLocation(51.520847, -0.19552100)
    .then((words) {
      setState(() {
        locationWords = words;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // (QRコードの読み取りQRコードの読み取り部分は、サンプルとしてアイコンを配置している)
        //　TODO:qr_code_scannerパッケージでQRコードの読み取り機能を実装。
        const Expanded(
          child: Center(child: Icon(Icons.arrow_upward)), // Add your QR scanner here
        ),

        // 自分のQRコード
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
        Text(locationWords), // APIコールで単語を呼び出す

      ],
    );
  }
}
