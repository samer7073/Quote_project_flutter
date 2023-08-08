// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Qoutes(),
  ));
}

class Qoutes extends StatefulWidget {
  const Qoutes({super.key});

  @override
  State<Qoutes> createState() => _QoutesState();
}

class _QoutesState extends State<Qoutes> {
  List<Quote> list = [
    Quote(
        text: "You can change what you do, but you can’t change what you want",
        author: "samer arfoui"),
    Quote(
        text: "You have to get what you want your own way",
        author: "samer arfaoui"),
    Quote(
        text:
            "I’m not afraid to die. I’m afraid of living a life that doesn’t matter",
        author: "samer arfaoui"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(
              child: Text(
            "My Quotes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        body: Column(
          children: list
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      list.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
