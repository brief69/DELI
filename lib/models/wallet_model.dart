


import 'package:deli_app/models/transaction_model.dart';


class WalletModel {
  double balance;
  List<Transaction>? transactions;

  WalletModel({required this.balance, this.transactions});

  Map<String, dynamic> toMap() {
    return {
      'balance': balance,
      'transactions': transactions?.map((transaction) => transaction.toMap()).toList(),
    };
  }
}
