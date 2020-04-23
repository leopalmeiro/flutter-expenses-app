import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Aluguel',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 10.50,
      date: DateTime.now(),
    ),
        Transaction(
      id: 't3',
      title: 'Aluguel',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de luz',
      value: 10.50,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value){
    final newtransaction = Transaction(id: Random().nextDouble().toString(), title: title, value: value, date: DateTime.now(),
    );
  
  setState(() => {
    _transactions.add(newtransaction),
  });

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        //passando parametros para filho com funcao. comunicacao indireta
        TransactionForm(_addTransaction),
                //comunicacao direta 
        TransactionList(_transactions),
      ],
    );
  }
}
