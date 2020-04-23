import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';
import 'models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas Pessoais'),
        ),
        body: SingleChildScrollView(
          child: Column(
            //definicao do alinhamento dos elementos da coluna end = final start= inicio
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                // tamanho total da largura
                //width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Grafico'),
                  elevation: 5,
                ),
              ),
              TransactionUser(),
            ],
          ),
        ));
  }
}
