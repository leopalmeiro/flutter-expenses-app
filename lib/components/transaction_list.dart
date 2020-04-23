import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      child: Column(
        children: transactions.map((tr) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple[50],
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  //Value
                  child: Text(
                    'R\$ ${tr.value.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //title
                    Text(
                      tr.title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    //date
                    Text(
                      DateFormat('d MMM y').format((tr.date)),
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
