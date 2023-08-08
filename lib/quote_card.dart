import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
   final  Function() delete;
  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[900],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: delete,
                child: const Text(
                  "delete quote",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
