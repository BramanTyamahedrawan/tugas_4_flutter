import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ],
          title: Center(child: Text('Tugas 3 Flutter')),
          backgroundColor: Colors.pink[300],
        ),
        backgroundColor: Colors.blueAccent,
        body: Column(
          children: <Widget>[
            Image.network(
                'https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            Padding(padding: EdgeInsets.all(15)),
            Row(
              children: [
                ColumnGambar1(),
                ColumnGambar2(),
              ],
            ),
            Padding(padding: EdgeInsets.all(30)),
            Text(
              'View Image Mountain',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 35.0,
              ),
            )
          ],
        ));
  }
}

class ColumnGambar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 12.0)),
            Image.network(
                'https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
            Padding(padding: EdgeInsets.symmetric(vertical: 17.0)),
            Text(
              'Gambar 1',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }
}

class ColumnGambar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            Image.network(
                'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
            Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
            Text(
              'Gambar 2',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
