import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quote> quotes = [
    Quote(author:'Ben', text: 'Live Love Laugh'),
    Quote(author:'Isbael', text: 'If he cant jive dont let him dive'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes of the day'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: quotes.map((q) =>  QuoteCard(
            quote: q,
            delete: () {
              setState(() {
                quotes.remove(q);
              });
            }
        )).toList(),
      ),
    );
  }
}



