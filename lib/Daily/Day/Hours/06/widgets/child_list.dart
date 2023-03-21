import 'package:flutter/material.dart';

import '../models/Child.dart';

class ChildList extends StatelessWidget {
  final List<Child> transactions;
  final Function delTx;

  ChildList(this.transactions, this.delTx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return ListTile(
          leading: Icon(Icons.arrow_forward_ios_rounded),
          title: Text(
            tx.title,
            style: TextStyle(
                fontFamily: 'Salsa-Regular', fontWeight: FontWeight.w300),
          ),
          trailing: IconButton(
              icon: Icon(Icons.delete_forever_rounded),
              onPressed: () => delTx(tx.id.toString())),
        );
      }).toList(),
    );
  }
}
