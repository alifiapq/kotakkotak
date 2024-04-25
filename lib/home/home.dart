library home;

import 'package:flutter/material.dart';
import 'package:den_loc/components/kotak.dart' as kotak;

class HomePage extends StatefulWidget {
  const HomePage({ super.key, required this.title });
  final String title;
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _boxColor = Colors.blue;
  
  void _changeBoxBgColor() {
    if (_boxColor == Colors.red) {
      setState(() {
        _boxColor = Colors.blue;
      });
    } else {
      setState(() {
        _boxColor = Colors.red;
      }); 
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            kotak.Kotak( color: _boxColor),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: _boxColor,
              width: 48.0,
              height: 48.0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: _boxColor,
              width: 48.0,
              height: 48.0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: _boxColor,
              width: 48.0,
              height: 48.0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: _boxColor,
              width: 48.0,
              height: 48.0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: _boxColor,
              width: 48.0,
              height: 48.0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: _boxColor,
              width: 48.0,
              height: 48.0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: _boxColor,
              width: 48.0,
              height: 48.0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: _boxColor,
              width: 48.0,
              height: 48.0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeBoxBgColor,
        tooltip: 'Tambah',
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
