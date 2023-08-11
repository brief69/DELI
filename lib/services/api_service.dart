

// TODO:暗号化して送受信と履歴の保存を行う

import 'package:http/http.dart' as http;

class ApiService {
  final String apiKey = 'YOUR_WHAT3WORDS_API_KEY';

  Future<String> getWordsFromLocation(double lat, double lon) async {
    final response = await http.get('https://api.what3words.com/v3/convert-to-3wa?coordinates=$lat,$lon&key=$apiKey');
    if (response.statusCode == 200) {
      // JSONデータを解析し、単語を返す。
      return 'example.word.word'; // 実際の構文解析に置き換える。
    } else {
      throw Exception('Failed to load data');
    }
  }
}
