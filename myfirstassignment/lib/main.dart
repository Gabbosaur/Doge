import 'dart:math';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // <-- è un widget Stateful e creo il mio Stato
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // devo fare una classe State che estande lo State della MyApp per far funzionare i bottoni
  String _elemento = "Predict the number from 0 to 100!";

  @override
  Widget build(BuildContext context) {
    // build sempre presente

    return MaterialApp(
        title: 'My First Assignment', // ?? non so dove venga stampato
        theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.deepOrange, primaryColor: Colors.deepOrange),
        home: Scaffold(
            appBar: AppBar(
              title: Text('First Assignment!'), // titolo dell'appBar
              
            ),
            body: Column(
              children: <Widget>[
                Center(
                  child: Text(_elemento, style: TextStyle(fontSize: 20)),
                  heightFactor: 15,
                ),
                Center(
                  child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    child: Text('Rolla!'),
                    onPressed: () {
                      setState(() {
                        var rng = Random();
                        _elemento = rng.nextInt(101).toString();
                      });
                    },
                  ),
                )
              ],
            )));
  }
}

/*import 'package:flutter/material.dart'; // ICON SIZE TEST

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

double _volume = 0.0;
double _emojisize = 24.0; // <--- BUG

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: <Widget>[
          Center(
            child: IconButton(
                icon: Icon(Icons.mood),
                iconSize: 30, // se gli assegno _emojisize, mi da un exception
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                   // _emojisize += 5; // BUG

                    _volume += 10;
                  });
                }),
          ),
          Center(
            child: Text('Volume: $_volume'),
          ),
          IconButton(
            icon: Icon(Icons.mood_bad),
            iconSize: 22,//_emojisize,
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
*/
