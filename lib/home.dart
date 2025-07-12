import 'package:flutter/material.dart';

import 'model.dart';

class Home extends StatelessWidget {
  List<Quote> quote = [
    Quote(
      quote: "East or west , Lena is the best",
      author: "Lenaa ",
    ),
    Quote(
      quote: "if you are bad, I'm your dad",
      author: "Lena kasmin ",
    ),
    Quote(
      quote: "Uff charge aay",
      author: "Lena jasmin ",
    ),
    Quote(
      quote: "I'm the best",
      author: "jasmin",


    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'QUOTES & AUTHORS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        titleTextStyle: TextStyle(color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: quote.length,
        itemBuilder: (context, index) {
          return GestureDetector(onTap: (){
            Navigator.pushNamed(arguments: quote[index],context, "details");
          },
            child: Card(
              color: Colors.black,
              child: Column(
                children: [
                  Align(
                    child: Text(
                      quote[index].quote,
                      style: TextStyle(color: Colors.white),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 20, width: 30),
                  Align(
                    child: Text(
                      quote[index].author,
                      style: TextStyle(color: Colors.white),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
