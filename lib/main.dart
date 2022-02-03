import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';
import 'package:my_wallet_app/widgets/cardSection.dart';
import 'package:my_wallet_app/widgets/expenses.dart';
import 'package:my_wallet_app/widgets/header.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpensesSection()),
        ],
      ),
    );
  }
}
