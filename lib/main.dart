import 'package:flutter/material.dart';
//import 'package:lab8_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {

  List<Quote> quotes = [
    Quote(text: 'quote1',author:
    'auth1'),

    Quote( text: 'quote2',author: 'auth2'),
    Quote(text: 'quote3',author:
    'auth3'),
  ];
  // Widget quoteTemplate(quote){
  //   return QuoteCard();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}

