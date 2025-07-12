import 'package:flutter/material.dart';
import 'package:multiscreen_qoute_app/model.dart';


class Home extends StatelessWidget {
  List<Quote> quote = [
    Quote(
      quote: "Believe you can and you're halfway there.",
      author: "Theodore Roosevelt.",
    ),
    Quote(
      quote: "The only thing we have to fear is fear itself.",
      author: " Franklin D. Roosevelt",
    ),
    Quote(
      quote:
      "Ask not what your country can do for you, ask what you can do for your country.",
      author: " - John F. Kennedy",
    ),
    Quote(quote: "Be the change that you wish to see in the world.",
        author: "- Mahatma Gandhi")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Quote and Author", style: TextStyle(color: Colors.blue)
        )
        ,
      )
      ,
      body
          :
      ListView
          .
      builder
        (
          itemCount
              :
          quote
              .
          length
          ,
          itemBuilder
              :
              (
              context
              ,
              index
              ){return GestureDetector(onTap: (){Navigator.pushNamed(arguments: quote[index],context, "Details");},
            child: Card(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Text(quote[index].quote),SizedBox(height: 20,),
                Card(child:Column(children: [Text(quote[index].author),SizedBox(height: 20,)],) ,)],),
            ),),
          );}),
    );
  }
}
