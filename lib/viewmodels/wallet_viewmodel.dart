

import '../services/wallet_service.dart';

class WalletViewModel {
  final walletService = WalletService();
  String? walletAddress;

  getWalletAddress() async {
    walletAddress = await walletService.getWalletAddress();
    // 状態更新など
  }
}
