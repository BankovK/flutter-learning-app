import 'package:flutter/material.dart';
import 'package:flutter_app/quote.dart';


class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback onDelete;

  const QuoteCard({Key? key, required this.quote, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600]
                )
            ),
            const SizedBox(height: 10),
            Text(
                quote.author,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500]
                )
            ),
            const SizedBox(height: 10),
            IconButton(
                onPressed: onDelete,
                icon: const Icon(Icons.delete),
                alignment: Alignment.bottomRight,
            )
          ],
        ),
      ),
    );
  }
}