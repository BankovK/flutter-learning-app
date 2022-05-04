import 'package:flutter/material.dart';
import 'package:flutter_app/trips_app/screens/home.dart';
import 'package:flutter_app/world_time_pages/choose_location.dart';
import 'package:flutter_app/world_time_pages/home.dart';
import 'package:flutter_app/world_time_pages/loading.dart';
import 'package:flutter_app/quote.dart';
import 'package:flutter_app/quote_card.dart';

void main() {
  // runApp(MaterialApp(
  //   home: HomeTest()
  // ));

  // runApp(MaterialApp(
  //   home: IdCard()
  // ));

  // runApp(MaterialApp(
  //   home: QuotesList()
  // ));

  // runApp(MaterialApp(
  //   initialRoute: '/',
  //   routes: {
  //     '/': (context) => const Loading(),
  //     '/home': (context) => const Home(),
  //     '/location': (context) => const ChooseLocation(),
  //   },
  // ));

  runApp(TripsApp());
}

// class HomeTest extends StatelessWidget {
//   const HomeTest({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('data'),
//         centerTitle: true,
//         backgroundColor: Colors.orange[600],
//       ),
//       // body: Center(
//       //   // child: Image(
//       //   //   // image: NetworkImage('https://i.pinimg.com/originals/fb/a7/e9/fba7e90aae11ba301fe88f9da2a35875.jpg'),
//       //   //   image: AssetImage('assets/bg.jpg'),
//       //   // )
//       //   // OR
//       //     child: Image.asset('assets/bg.jpg'),
//       // ),
//       body: Center(
//         child: ElevatedButton.icon(
//           onPressed: () {
//             print('CLICKED');
//           },
//           style: ElevatedButton.styleFrom(primary: Colors.purple),
//           icon: Icon(
//             Icons.mail
//           ),
//           label: Text('Mail'),
//         // child: IconButton(
//         //   onPressed: () {
//         //     print('CLICKED');
//         //   },
//         //   color: Colors.purple,
//         //   icon: Icon(
//         //     Icons.mail
//         //   )
//         )
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//
//         },
//         child: const Text('Click'),
//         backgroundColor: Colors.orange[600],
//       ),
//     );
//   }
// }

// class HomeTest extends StatelessWidget {
//   const HomeTest({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('data'),
//         centerTitle: true,
//         backgroundColor: Colors.orange[600],
//       ),
//       // body: Container(
//       //   padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
//       //   margin: EdgeInsets.all(100.0),
//       //   color: Colors.grey[400],
//       //   child: Text('Text'),
//       // ),
//       body: const Padding(
//         padding: EdgeInsets.all(30.0),
//         child: Text('Text'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//
//         },
//         child: const Text('Click'),
//         backgroundColor: Colors.orange[600],
//       ),
//     );
//   }
// }

// class HomeTest extends StatelessWidget {
//   const HomeTest({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('data'),
//         centerTitle: true,
//         backgroundColor: Colors.orange[600],
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           const Text('Hello'),
//           TextButton(
//             onPressed: () {},
//             child: const Text('Click'),
//           ),
//           Container(
//             color: Colors.amber,
//             padding: const EdgeInsets.all(30),
//             child: const Text('Inside container'),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//
//         },
//         child: const Text('Click'),
//         backgroundColor: Colors.orange[600],
//       ),
//     );
//   }
// }

// class HomeTest extends StatelessWidget {
//   const HomeTest({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('data'),
//         centerTitle: true,
//         backgroundColor: Colors.orange[600],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: <Widget>[
//           Row(
//             children: const <Widget>[
//               Text('Text'),
//               Text('Text2')
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.all(20.0),
//             color: Colors.cyan,
//             child: Text('One')
//           ),
//           Container(
//               padding: EdgeInsets.all(30.0),
//               color: Colors.red,
//               child: Text('Two')
//           ),
//           Container(
//               padding: EdgeInsets.all(40.0),
//               color: Colors.blue,
//               child: Text('Three')
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//
//         },
//         child: const Text('Click'),
//         backgroundColor: Colors.orange[600],
//       ),
//     );
//   }
// }

class HomeTest extends StatelessWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.asset('assets/bg.jpg')
          ),
          Expanded(
            flex: 3,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text('1')
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.red,
                child: Text('2')
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.blue,
                child: Text('3')
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Text('Click'),
        backgroundColor: Colors.orange[600],
      ),
    );
  }
}

// ID Card page
class IdCard extends StatefulWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int accessLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 50,
              ),
            ),
            Divider(
                height: 60,
                color: Colors.orange[200],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.white54,
                letterSpacing: 2
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'User1',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'ACCESS LEVEL',
              style: TextStyle(
                  color: Colors.white54,
                  letterSpacing: 2
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$accessLevel',
              style: const TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white60,
                ),
                SizedBox(width: 10),
                Text(
                  'user1@mail.com',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                    letterSpacing: 1
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            accessLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }
}

// QuotesList
class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'John Cutter'),
    Quote('In ultricies magna nunc, nec finibus nibh aliquet quis.', 'John Wild'),
    Quote('Aliquam congue feugiat metus, et mollis orci ullamcorper eget.', 'John Rock'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            onDelete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}

// Trips
class TripsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trips',
      home: TripsHome(),
    );
  }
}
