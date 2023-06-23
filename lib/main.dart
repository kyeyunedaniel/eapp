// import 'dart:ffi';
// import 'dart:async';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      // home: Text("hello world"),
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'daniel', text: 'be honest to yourself'),
    Quote(
        author: 'kyeyune', text: 'I have nothing to declare except my genius'),
    Quote(author: 'ethan', text: 'the truth is rarely pre and never simple'),
  ];

  Widget quoteTemplate(quote) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          children: [
            Text(quote.text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                )),
            SizedBox(height: 10),
            Text(quote.author,
                style: TextStyle(fontSize: 14, color: Colors.grey[800])),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[250],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.green[200],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote)=>quoteTemplate(quote)).toList(),
          // quotes
          //     .map((quote) => Text('${quote.text} - ${quote.author}'))
          //     .toList(),
          // elevation: 0,
        ));
  }
}

// class DanielK extends StatefulWidget {
//   @override
//   State<DanielK> createState() => _DanielKState();
// }

// class _DanielKState extends State<DanielK> {
//   // const MyWidget({Key? key}) : super(key: key);
//   int ninja_level = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green[10],
//       appBar: AppBar(
//         title: Text(
//           'Welcome Daniel',
//           style: TextStyle(color: Colors.grey[100]),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.green[200],
//         elevation: 0,
//       ),
//       body: Padding(
//           padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: CircleAvatar(
//                   // backgroundColor: Colors.cyan,
//                   backgroundImage: AssetImage('assets/pikaimage1.jpeg'),
//                   radius: 25,
//                 ),
//               ),
//               Divider(
//                 height: 90.0,
//                 color: Colors.black,
//               ),
//               SizedBox(height: 20),
//               Text('NAME',
//                   style: TextStyle(
//                     color: Colors.black,
//                     // letterSpacing: 2.0,
//                   )),
//               SizedBox(height: 10),
//               Text('Kyeyune Daniel',
//                   style: TextStyle(
//                       color: Colors.amberAccent[200],
//                       letterSpacing: 2.0,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold)),
//               SizedBox(height: 20),
//               Text('CURRENT NINJA LEVEL',
//                   style: TextStyle(
//                     color: Colors.black,
//                     // letterSpacing: 2.0,
//                   )),
//               SizedBox(height: 10),
//               Text('$ninja_level',
//                   style: TextStyle(
//                       color: Colors.amberAccent[200],
//                       letterSpacing: 2.0,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold)),
//               SizedBox(height: 30),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.email,
//                     color: Colors.grey[400],
//                   ),
//                   SizedBox(width: 10),
//                   Text('Kyeyunedaniel0@gmail.com',
//                       style: TextStyle(
//                         fontSize: 15,
//                         letterSpacing: 1.5,
//                       )),
//                 ],
//               )
//             ],
//           )),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // USING STATESTATE
//           setState(() {
//             ninja_level = ninja_level + 1;
//           });
//         },
//         backgroundColor: Colors.blue[200],
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

//lets try stateless widgets
// class Test extends StatefulWidget {
//   // const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green[400],
//       appBar: AppBar(
//         title: Text(
//           'Welcome Daniel',
//           style: TextStyle(color: Colors.grey[100]),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.green[200],
//         elevation: 0,
//       ),
//       body: Padding(
//           padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: CircleAvatar(
//                   // backgroundColor: Colors.cyan,
//                   backgroundImage: AssetImage('assets/pikaimage1.jpeg'),
//                   radius: 25,
//                 ),
//               ),
//               Divider(
//                 height: 90.0,
//                 color: Colors.black,
//               ),
//               SizedBox(height: 20),
//               Text('NAME',
//                   style: TextStyle(
//                     color: Colors.black,
//                     // letterSpacing: 2.0,
//                   )),
//               SizedBox(height: 10),
//               Text('Kyeyune Daniel',
//                   style: TextStyle(
//                       color: Colors.amberAccent[200],
//                       letterSpacing: 2.0,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold)),
//               SizedBox(height: 20),
//               Text('CURRENT NINJA LEVEL',
//                   style: TextStyle(
//                     color: Colors.black,
//                     // letterSpacing: 2.0,
//                   )),
//               SizedBox(height: 10),
//               Text('9',
//                   style: TextStyle(
//                       color: Colors.amberAccent[200],
//                       letterSpacing: 2.0,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold)),
//               SizedBox(height: 30),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.email,
//                     color: Colors.grey[400],
//                   ),
//                   SizedBox(width: 10),
//                   Text('Kyeyunedaniel0@gmail.com',
//                       style: TextStyle(
//                         fontSize: 15,
//                         letterSpacing: 1.5,
//                       )),
//                 ],
//               )
//             ],
//           )),
//     );
// }
// }
