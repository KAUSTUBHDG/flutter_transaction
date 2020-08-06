import 'package:flutter/material.dart';
import 'transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionList({this.transaction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TransactionList'),
      ),
      body: Container(
        child: transaction == null || transaction.isEmpty
            ? Center(
              child: Text(
                  'No Data Added',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                  ),
                ),
            )
            : ListView.builder(
                itemCount: transaction.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    elevation: 5,
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 5,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: FittedBox(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '\$${transaction[index].title}',
                                ),
                                Text(
                                  '${transaction[index].cost}',
                                ),
                                Text(
                                  '${transaction[index].from}',
                                ),
                                Text(
                                  '${transaction[index].to}',
                                ),
                                /*   Text(
                                '${transaction[index].dateTime}',
                              ),*/
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
